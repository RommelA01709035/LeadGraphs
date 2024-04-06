// test.js
const mysql = require('mysql2/promise');
const Usuario = require('./consult');

describe('Pruebas de eliminar usuario', () => {
    let connection;

    beforeAll(async () => {
        connection = await mysql.createConnection({
            host: 'localhost',
            user: 'root',
            password: '',
            database: 'leadgraphs'
        });
    });

    afterAll(async () => {
        await connection.end();
    });

    test('Elimina usuario correcto', async () => {
        const IDUsuario = 12;
        const nombre_usuario = "Ana"
        const Celular = 555-222-3333
        const Correo = "ana@gmail.com"
        const Contrasena = "ana890"
        const Fecha_Ingreso = "2024-03-17"
        const Habilitado = 1

        const [rows1] = await Usuario.fetchOne_user(IDUsuario);
        const [rows2] = await Usuario.fetchOne_user_change(IDUsuario,gmailCambiado);
        console.log(rows1); 
        console.log(rows2);
        expect(rows1.length).toBe(1);
        expect(rows1[0].Correo).toBe(gmailCambiado);
    });
    
    test('No confirma la eliminación de usuario', async () => {
        const IDUsuario = 12;
        const nombre_usuario = "Ana"
        const Celular = 555-222-3333
        const Correo = "ana@gmail.com"
        const Contrasena = "ana890"
        const Fecha_Ingreso = "2024-03-17"
        const Habilitado = 0

        const [rows] = await Usuario.fetchOne_user(IDUsuario);
        console.log(rows);
        expect(rows.length).toBe(0);
    });
    
});