const { response } = require('express');
const Usuario = require('../models/usuario.model');
const bcrypt = require('bcryptjs');

exports.get_login = (request, response, next) => {
    console.log(request.body);
    const error = request.session.error || ''; 
    request.session.error = '';
    const message = request.session.message || ''; 
    request.session.message = ''; 
    response.render('login', { 
        username: request.session.username || '',
        csrfToken: request.csrfToken(),
        error: error,
        message: message, 
    }); 
};

exports.post_login = (request, response, next) => {
    console.log(request.body.email);
    console.log(request.body.password);
    Usuario.fetchEmail(request.body.email)
        .then(([usuarios, fieldData]) => {
            if(usuarios.length == 1) {
                const usuario = usuarios[0];
                console.log(usuario);
                bcrypt.compare(request.body.password, usuario.Contrasena)
                    .then(doMatch => {
                        if (doMatch) {
                            request.session.isLoggedIn = true;
                            request.session.email = usuario.email;
                            return request.session.save(err => {
                                response.redirect('/homepage');
                            });
                        } else {
                            request.session.error = 'El usuario y/o contraseña son incorrectos';
                            return response.redirect('/login');
                        }
                    }).catch(err => {
                        response.redirect('/login')
                    });
            } else {
                request.session.error = 'El usuario y/o contraseña son incorrectos';
                response.redirect('/login');
            }
        })
        .catch((error) => {console.log(error)});
};

exports.get_logout = (request, response, next) => {
    request.session.destroy(() => {
        response.redirect('/login'); 
    });
};

exports.get_signup = (request, response, next) => {
    const error = request.session.error || '';
    request.session.error = '';
    response.render('signup', {
        username: request.session.username || '',
        registrar: true,
        error: error,
        csrfToken: request.csrfToken(),
        permisos: request.session.permisos || [],
    }); 
};


exports.post_signup = (request, response, next) => {
    const { nombre_usuario, correo, celular, contrasena } = request.body;
    const nuevo_usuario = Usuario.createUserContructor(nombre_usuario, correo, celular, contrasena);
    
    Usuario.create(nombre_usuario, correo, celular, contrasena)
        .then(([rows, fieldData]) => {
            // Obtener el ID del usuario recién registrado
            const userId = rows.insertId;
            // Asignar el rol al usuario
            return Usuario.asignarUsuarioRol(nombre_usuario, correo)
                .then(() => {
                    // Devolver el ID del usuario para usarlo en la siguiente promesa
                    return userId;
                });
        })
        .then((userId) => {
            // Obtener los detalles del usuario utilizando su ID
            return Usuario.fetchOne(userId);
        })
        .then(([user, fieldData]) => {
            const message = `El usuario ${user[0].nombre_usuario} con correo electrónico ${user[0].Correo} ha sido registrado correctamente.`;
            request.session.message = message; 
            console.log("Usuario registrado correctamente");
            response.redirect('/login');
        })
        .catch(error => {
            console.log(error);
            request.session.error = 'Nombre de usuario inválido.';
            response.redirect('/login');
        });
};