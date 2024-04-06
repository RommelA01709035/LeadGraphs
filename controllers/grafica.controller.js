const Grafica = require('../models/grafica.model');
const Leads = require('../models/leads.model');
const { end } = require('../util/database');

exports.get_crea_grafica = (request, response, next) => {
    const opcion = "";
    const startDate = new Date().toISOString().split('T')[0]; 
    const minDate = "XXXX-XX-XX"; 
    const maxDate = "XXXX-XX-XX"; 
    response.render('crea-grafica', { opcion: opcion, startDate: startDate, minDate: minDate, maxDate: maxDate });
};


exports.post_grafica = (request, response, next) => {
    const { caso, opcion, startDate, endDate } = request.body;
    
    const startMonth = new Date(startDate); 
    const endMonth = new Date(endDate); 
    console.log(caso)
    switch (caso) {
        case 'leadsPorMes':
            Grafica.getLeadsMonth(startMonth, endMonth)
                .then(([rows, fieldData]) => {
                    const data = rows.map(row => ({
                        mes: row.mes, 
                        cantidad_leads: row.cantidad_leads,
                    }));
                    console.log("Tuplas obtenidas de la base de datos:");
                    data.forEach(tupla => {
                        console.log(tupla);
                    });
                    Grafica.getAverage(startMonth,endMonth)
                    .then(([rows2, fieldData]) => {
                        const average = rows2.map(row => ({
                            promedio: row.promedio
                        }));
                        console.log("Promedio:");
                        average.forEach(tupla => {
                            console.log(tupla);
                        });
                        Grafica.getMax(startMonth, endMonth)
                        .then(([rows3, fieldData]) => {
                            const maximo = rows3.map(row => ({
                                maximo: row.maximo
                            }));
                            console.log("Maximo:");
                            maximo.forEach(tupla => {
                                console.log(tupla);
                            });
                        
                            Grafica.getMin(startMonth, endMonth)
                            .then(([rows4, fieldData]) => {
                                const minimo = rows4.map(row => ({
                                    minimo: row.minimo
                                }));
                                console.log("Minimo:");
                                minimo.forEach(tupla => {
                                    console.log(tupla);
                                });
                                console.log(startDate);
                                console.log(endDate);
                                response.render('grafica', { data: data, opcion: opcion , caso: caso, startMonth: startMonth, endMonth: endMonth, titulo: "Leads por mes", average:average, maximo: maximo, minimo: minimo});
                        
                            }).catch(error => {
                                console.log(error);
                                response.status(500).json({ message: "Error en minimo" });
                            });
                        }).catch(error => {
                            console.log(error);
                            response.status(500).json({ message: "Error en maximo" });
                        });
                        
                    }).catch(error => {
                        console.log(error);
                        response.status(500).json({ message: "Error en promedio" });
                    });
                    
                })
                .catch(error => {
                    console.log(error);
                    response.status(500).json({ message: "Error creating chart" });
                });
            break;
        case 'leadsPorMesCategory':
            Grafica.getLeadsMonthCategory(startMonth, endMonth)
                .then(([rows, fieldData]) => {
                    const data = rows.map(row => ({
                        mes: row.mes,
                        estado_lead: row.estado_lead, 
                        cantidad_leads: row.cantidad_leads,
                    }));
                    console.log("Tuplas obtenidas de la base de datos:");
                    data.forEach(tupla => {
                        console.log(tupla);
                    });
                    console.log(opcion);
                    
                })
                .catch(error => {
                    console.log(error);
                    response.status(500).json({ message: "Error creating chart" });
                });
            break;response.render('grafica', { data: data, opcion: opcion, caso: caso, titulo: "Leads por categoria"});
        case 'LastMessage':
            const {palabra} = request.body
            console.log(palabra)
            if(palabra){
                Grafica.getLastMessage(palabra,startMonth, endMonth)
                .then(([rows, fieldData]) => {
                    const data = rows.map(row => ({
                        cantidad_mensajes: row.cantidad_mensajes, 
                        palabra: palabra,
                    }));
                    console.log("Tuplas obtenidas de la base de datos:");
                    data.forEach(tupla => {
                        console.log(tupla);
                    });
                    console.log(opcion);
                   
                })
                .catch(error => {
                    console.log(error);
                    response.status(500).json({ message: "Error creating chart" });
                });}
                else {
                    console.log("ENtraste al Else")
                    console.log(opcion);
                    response.render('crea-grafica', { opcion: "LastMessage", startMonth: startMonth, endMonth: endMonth, caso: caso, titulo: ""});
                }
            
            break;    response.render('grafica', { data: data, opcion: opcion, caso: caso, titulo: "Leads con este mensaje" });
            case 'PerCompany':

                    Grafica.getPerCompany(startMonth, endMonth)
                    .then(([rows, fieldData]) => {
                        const data = rows.map(row => ({
                            cantidad_mensajes: row.cantidad_mensajes, 
                            Compania: row.Compania,
                        }));
                        console.log("Tuplas obtenidas de la base de datos:");
                        data.forEach(tupla => {
                            console.log(tupla);
                        });
                        console.log(opcion);
                        
                    })
                    .catch(error => {
                        console.log(error);
                        response.status(500).json({ message: "Error creating chart" });
                    });
                break;   response.render('grafica', { data: data, opcion: opcion, caso: caso, titulo: "Leads por compañia" });                                      

        default:
            response.status(400).json({ message: "Invalid case" });
    }
};