const { request, response } = require('express');
const Leads = require('../models/leads.model');
const fs = require('fs');
const pool = require('../util/database');

exports.getImportar = async (request, response, next) => {
    try{
        console.log('Ruta importar')
        response.render('importar', {
            message: '',
            username: request.session.username || '', 
            roles: request.session.roles || [],
            csrfToken: request.csrfToken(),
        });
    } catch (error) {
        console.error('Error cargar:', error);
        response.status(500).send('Error al cargar');
    }
};

// Controlador para manejar la importacion de archivo CSV
exports.postImportar = async (request, response, next) => {
    let filePath;
    try {
        console.log('hiciste postImportar')

        console.log(request.body); 
        console.log(request.file);

        if(!request.file){
            return response.status(400).json({
                success: false, 
                message: 'Error al subir archivo',
            });
        } 

        // Obtener la ruta del archivo subido
        const filePath = request.file.path;
        console.log(filePath);
        console.log('Archivo subido: ', request.file);

        // Importar los datos del archivo csv
        const importarLeads = await Leads.importar(filePath)

        
        // Eliminar el archivo importado del directorio uploads
        fs.unlink(filePath, (err) => {
            if (err) {
                console.error('Error al eliminar el archivo: ', err);
            } else {
                console.log('Archivo eliminado con éxito: ', filePath);
            }
        });

        return response.status(200).json({
            success: true, 
            message: 'Archivo subido correctamente',
        });
    } catch (error) {
        console.error('Error al subir el archivo: ', error);
        response.status(500).json({
            success: false, 
            message: 'Error al subir el archivo',
        });
    } 
};

exports.getLeadsPage = async (request, response, next) => {
    try {
        const [leads, fieldData] = await Leads.fetchAll();

        const message = '';

        console.log(leads);
        response.render('consultar_lead', { 
            leads: leads,
            message: message,
            csrfToken: request.csrfToken(),
            username: request.session.username || '',
            roles: request.session.roles || [],
        });

        // No es necesario crear una instancia de Leads aquí
    } catch (error) {
        console.error('Error al obtener leads:', error);
        response.status(500).send('Error al obtener leads');
    }
};

exports.renderAddLeadPage = async (request, response, next) => {
    try {

        // Renderiza la vista de agregar lead
        response.render('agregar_lead', {
            csrfToken: request.csrfToken(),
            username: request.session.username || '',
            roles: request.session.roles || [],
        });
    } catch (error) {
        console.error('Error al renderizar la vista de agregar lead:', error);
        response.status(500).send('Error al renderizar la vista de agregar lead');
    }
};

exports.agregarLead = async (req, res) => {
    try {
        
        // Filtrar los valores undefined del cuerpo de la solicitud
        const formData = Object.fromEntries(Object.entries(req.body).filter(([_, v]) => v !== undefined));

        console.log(formData);

        const convertToNull = (value) => (value === undefined ? null : value);

        // Crear un nuevo objeto Lead con los datos del formulario
        const nuevoLead = new Leads({
            // IDHistorial: formData.IDHistorial !== undefined ? convertToNull(formData.IDHistorial) : null,
            IDWorkspace: formData.IDWorkspace !== undefined ? convertToNull(formData.IDWorkspace) : null,
            Telefono: formData.Telefono !== undefined ? convertToNull(formData.Telefono) : null,
            Nombre: formData.Nombre !== undefined ? convertToNull(formData.Nombre) : null,
            Valor: formData.Valor !== undefined ? convertToNull(formData.Valor) : null,
            Ganado: formData.Ganado !== undefined ? convertToNull(formData.Ganado) : null,
            Correo: formData.Correo !== undefined ? convertToNull(formData.Correo) : null,
            Etiqueta: formData.Etiqueta !== undefined ? convertToNull(formData.Etiqueta) : null,
            Compania: formData.Compania !== undefined ? convertToNull(formData.Compania) : null,
            Fecha_Primer_Mensaje: formData.Fecha_Primer_Mensaje !== undefined ? convertToNull(formData.Fecha_Primer_Mensaje) : null,
            Hora_Primer_Mensaje: formData.Hora_Primer_Mensaje !== undefined ? convertToNull(formData.Hora_Primer_Mensaje) : null,
            Primer_Mensaje: formData.Primer_Mensaje !== undefined ? convertToNull(formData.Primer_Mensaje) : null,
            Fecha_Ultimo_Mensaje: formData.Fecha_Ultimo_Mensaje !== undefined ? convertToNull(formData.Fecha_Ultimo_Mensaje) : null,
            Hora_Ultimo_Mensaje: formData.Hora_Ultimo_Mensaje !== undefined ? convertToNull(formData.Hora_Ultimo_Mensaje) : null,
            Ultimo_Mensaje: formData.Ultimo_Mensaje !== undefined ? convertToNull(formData.Ultimo_Mensaje) : null,
            Estado_Lead: formData.Estado_Lead !== undefined ? convertToNull(formData.Estado_Lead) : null,
            Seller_Asignado: formData.Seller_Asignado !== undefined ? convertToNull(formData.Seller_Asignado) : null,
            Embudo: formData.Embudo !== undefined ? convertToNull(formData.Embudo) : null,
            Etapa: formData.Etapa !== undefined ? convertToNull(formData.Etapa) : null,
            Archivado: formData.Archivado !== undefined ? convertToNull(formData.Archivado) : null,
            Creado_Manualmente: formData.Creado_Manualmente !== undefined ? convertToNull(formData.Creado_Manualmente) : null
        });
        
        // Guardar el nuevo lead en la base de datos
        await nuevoLead.save();

        // Redirigir a la página de leads después de guardar
        res.redirect('/importar/leads');
    } catch (error) {
        console.error('Error al agregar lead:', error);
        res.status(500).send('Error al agregar lead');
    }

};
    
exports.buscarLeads = async (request, response, next) => {
    try {
        const nombre = request.params.nombre || '';
        const leads = await Leads.buscarPorNombre(nombre);

        // Agrega este log para imprimir los datos encontrados
        console.log('Datos de leads encontrados:', leads);

    
        response.status(200).json(leads);
    } catch (error) {
        console.error('Error al buscar leads:', error);
        response.status(500).json({ error: 'Ocurrió un error al buscar leads' });
    }
};

exports.renderModificarLeadPage = async (req, res) => {
    try {

        const leadId = req.params.lead_id;

        const [lead, fieldData] = await Leads.fetchOne(leadId);
        
        // Verificar si se encontró el lead
        if (lead.length == 0) {
            // Si el lead no se encuentra, puedes manejar el error o redirigir a alguna página de error
            return res.status(404).render('error404', { message: 'Lead no encontrado' });
        }

        else{

            console.log('Datos del lead en renderModificarLeadPage:', lead);
            Leads.sellerOption()
            .then(([rows, fieldData]) =>{
                sellers = rows.map(row => ({
                    seller: row.seller_asignado
                }));
                sellers.forEach(tupla => {
                    console.log(tupla);
                });

                
            // Renderiza la vista de modificar lead
            res.render('modificar_lead', {
                sellers: sellers, 
                lead: lead[0] , 
                csrfToken: req.csrfToken(),
                username: req.session.roles || '',
                roles: req.session.roles || [],
            });
            })
            .catch(error => {
                console.log(error);
                response.status(500).json({ message: "Error obteniendo sellers" });
            });

        }

    } catch (error) {
        console.error('Error al renderizar la vista de modificar lead:', error);
        res.status(500).send('Error al renderizar la vista de modificar lead');
    }
};

exports.guardarLead = async (req, res) => {
    const leadId = req.params.lead_id; // Obtener el ID del lead de los parámetros de la URL
    const leadData = req.body; // Obtener los datos del lead del cuerpo de la solicitud

    try {

        console.log('Nuevos datos modificados:', leadData);

        // Actualizar el lead en la base de datos utilizando el modelo
        const lead = await Leads.actualizarLead(leadId, leadData);

        // Enviar una respuesta al cliente
        res.redirect('/importar/leads');

    } catch (error) {
        console.error('Error al guardar lead:', error);
        res.status(500).json({ error: 'Ocurrió un error al guardar el lead' });
    }
};


exports.eliminarLead = async (request, response, next) => {
    try {
        const leadId = request.body.IDLead;
        
        // Eliminar el lead de la base de datos
        await Leads.deleteLead(leadId);  

        // Obtener los leads actualizados después de la eliminación
        const [leads, fieldData] = await Leads.fetchAll(); 

        const message = 'El Lead ha sido eliminado correctamente.';

        // Devolver los leads actualizados en la respuesta
        response.status(200).json({ leads: leads, message: message}); 
    } catch (error) {
        console.error('Error al eliminar lead:', error);
        response.status(500).json({ error: 'Ocurrió un error al eliminar Lead.' });
    }
};
    