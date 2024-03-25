// test.js
const mysql = require('mysql2/promise');
const Usuario = require('./consult');

describe('Pruebas de Usuario', () => {
    let connection;

    beforeAll(async () => {
        connection = await mysql.createConnection({
            host: 'localhost',
            user: 'root',
            password: 'AguaUwu2',
            database: 'leadgraphs'
        });
    });

    afterAll(async () => {
        await connection.end();
    });

    test('fetchOne devuelve el Usuario correcto', async () => {
        const IDUsuario = 12;
        const expectedUser = {
            IDUsuario: 12,
            nombre_usuario: "Ana",
            Celular: "555-222-3333",
            Correo: "ana@gmail.com",
            Fecha_Ingreso: new Date("2024-03-17T06:00:00.000Z"), // Crear objeto Date
            Habilitado: 1
        };
    
        const [rows] = await Usuario.fetchOne_user(IDUsuario);
        console.log(rows); 
        expect(rows.length).toBe(1);
        expect(rows[0].IDUsuario).toBe(expectedUser.IDUsuario);
        expect(rows[0].Nombre).toBe(expectedUser.Nombre);
        expect(rows[0].Celular).toBe(expectedUser.Celular);
        expect(rows[0].Correo).toBe(expectedUser.Correo);
        // Comparar fechas utilizando getTime() para obtener milisegundos
        expect(rows[0].Fecha_Ingreso.getTime()).toBe(expectedUser.Fecha_Ingreso.getTime());
        expect(rows[0].Habilitado).toBe(expectedUser.Habilitado);
    });
    
    test('fetchOne no encuentra el Usuario', async () => {
        const IDUsuario = 21;
        const [rows] = await Usuario.fetchOne_user(IDUsuario);
        console.log(rows);
        expect(rows.length).toBe(0);
    });
    
});
