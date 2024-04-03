INSERT INTO `usuario_prueba` (`IDUsuario`, `nombre_usuario`, `Celular`, `Correo`, `Contrasena`, `Fecha_Ingreso`, `Habilitado`) VALUES
(12, 'Ana', '555-222-3333', 'ana@gmail.com', 'ana890', '2024-03-17', 1);


-- Volcando datos para la tabla leadgraphs.leads: ~50 rows (aproximadamente)
REPLACE INTO `leads` (`IDLead`, `IDHistorial`, `IDWorkspace`, `Telefono`, `Nombre`, `Valor`, `Ganado`, `Correo`, `Etiqueta`, `Compania`, `Creado`, `Hora_Creacion`, `Fecha_Primer_Mensaje`, `Hora_Primer_Mensaje`, `Primer_Mensaje`, `Fecha_Ultimo_Mensaje`, `Hora_Ultimo_Mensaje`, `Ultimo_Mensaje`, `Estado_Lead`, `Seller_Asignado`, `Embudo`, `Etapa`, `Archivado`, `Creado_Manualmente`) VALUES
	(1, 1, 1, '555-1234', 'Pedro', 1000, 1, 'Pedro@gmail.com', 'Importante', 'Telcel', '2024-03-06', '12:00:00', '2024-03-06', '12:30:00', 'Buenos días ', '2024-06-03', '13:00:00', 'Gracias hasta luego', 'Ended', 'John', 'Presales', 'Contactados', 'true', 0),
	(2, 1, 1, '555-5678', 'María', 1500, 0, 'maria@gmail.com', 'Normal', 'Movistar', '2024-03-07', '11:30:00', '2024-03-07', '12:00:00', 'Hola, ¿cómo estás?', '2024-06-04', '14:00:00', 'Nos vemos pronto', 'In progress', 'Sarah', 'Sales', 'Qualified', 'false', 1),
	(3, 1, 2, '555-9012', 'Juan', 2000, 1, 'juan@gmail.com', 'Urgente', 'MegaCable', '2024-03-08', '10:00:00', '2024-03-08', '10:30:00', 'Good morning', '2024-06-05', '15:00:00', 'See you later', 'New', 'Emily', 'Marketing', 'Cold', 'true', 0),
	(4, 1, 2, '555-3456', 'Ana', 1200, 1, 'ana@gmail.com', 'Importante', 'Infinitum', '2024-03-09', '09:30:00', '2024-03-09', '10:00:00', 'Hi there', '2024-06-06', '16:00:00', 'Take care', 'Qualified', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(5, 1, 3, '555-6789', 'Luis', 1800, 0, 'luis@gmail.com', 'Normal', 'Infinitum', '2024-03-10', '08:45:00', '2024-03-10', '09:15:00', 'Hello!', '2024-06-07', '17:00:00', 'Have a great day', 'Cold', 'Sophia', 'Marketing', 'Contacted', 'true', 0),
	(6, 1, 3, '555-4321', 'Laura', 1600, 1, 'laura@gmail.com', 'Urgente', 'Telcel', '2024-03-11', '14:00:00', '2024-03-11', '14:30:00', 'Hey!', '2024-06-08', '18:00:00', 'See you tomorrow', 'Qualified', 'David', 'Sales', 'Contacted', 'false', 1),
	(7, 2, 1, '555-7890', 'Carlos', 1400, 0, 'carlos@gmail.com', 'Normal', 'Infinitum', '2024-03-12', '13:30:00', '2024-03-12', '14:00:00', 'Hi!', '2024-06-09', '09:00:00', 'Goodbye', 'Cold', 'Emma', 'Marketing', 'Qualified', 'true', 0),
	(8, 2, 3, '555-8901', 'Marta', 1700, 1, 'marta@gmail.com', 'Importante', 'Infinitum', '2024-03-13', '10:45:00', '2024-03-13', '11:15:00', 'Good morning', '2024-06-10', '10:30:00', 'See you later', 'New', 'Daniel', 'Presales', 'Contacted', 'false', 1),
	(9, 2, 3, '555-6789', 'Elena', 1900, 0, 'elena@gmail.com', 'Normal', 'Infinitum', '2024-03-14', '09:15:00', '2024-03-14', '09:45:00', 'Hello!', '2024-06-11', '11:00:00', 'Have a great day', 'Cold', 'Sophia', 'Marketing', 'Contacted', 'true', 0),
	(10, 2, 3, '555-1234', 'Diego', 1300, 1, 'diego@gmail.com', 'Urgente', 'Infinitum', '2024-03-15', '12:30:00', '2024-03-15', '13:00:00', 'Hey there!', '2024-06-12', '12:30:00', 'Talk to you later', 'Qualified', 'Sarah', 'Sales', 'Contacted', 'false', 1),
	(11, 2, 4, '555-2345', 'Sara', 1400, 0, 'sara@gmail.com', 'Normal', 'Telcel', '2024-03-16', '11:45:00', '2024-03-16', '12:15:00', 'Hello!', '2024-06-13', '13:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Contacted', 'true', 0),
	(12, 2, 4, '555-3456', 'Mario', 1500, 1, 'mario@gmail.com', 'Importante', 'Movistar', '2024-03-17', '10:15:00', '2024-03-17', '10:45:00', 'Good morning', '2024-06-14', '14:00:00', 'See you later', 'Qualified', 'Emily', 'Presales', 'Contacted', 'false', 1),
	(13, 3, 5, '555-4567', 'Lorena', 1600, 0, 'lorena@gmail.com', 'Normal', 'Infinitum', '2024-03-18', '09:30:00', '2024-03-18', '10:00:00', 'Hi there', '2024-06-15', '15:30:00', 'Goodbye', 'Cold', 'Michael', 'Marketing', 'Qualified', 'true', 0),
	(14, 3, 5, '555-5678', 'Camila', 1700, 1, 'camila@gmail.com', 'Urgente', 'Infinitum', '2024-03-19', '11:00:00', '2024-03-19', '11:30:00', 'Hello!', '2024-06-16', '16:00:00', 'See you tomorrow', 'New', 'Sophia', 'Sales', 'Contacted', 'false', 1),
	(15, 3, 6, '555-6789', 'Javier', 1800, 0, 'javier@gmail.com', 'Normal', 'MegaCable', '2024-03-20', '10:30:00', '2024-03-20', '11:00:00', 'Hey there!', '2024-06-17', '17:30:00', 'Talk to you later', 'Cold', 'Daniel', 'Marketing', 'Qualified', 'true', 0),
	(16, 3, 6, '555-7890', 'Lucía', 1900, 1, 'lucia@gmail.com', 'Importante', 'Pinnacle', '2024-03-21', '09:45:00', '2024-03-21', '10:15:00', 'Good morning', '2024-06-18', '12:00:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(17, 3, 7, '555-8901', 'Marcos', 2000, 0, 'marcos@gmail.com', 'Normal', 'Telcel', '2024-03-22', '11:00:00', '2024-03-22', '11:30:00', 'Hi!', '2024-06-19', '14:30:00', 'Goodbye', 'Cold', 'Sarah', 'Marketing', 'Qualified', 'true', 0),
	(18, 3, 7, '555-9012', 'Ana María', 2200, 1, 'anamaria@gmail.com', 'Urgente', 'Infinitum', '2024-03-23', '10:15:00', '2024-03-23', '10:45:00', 'Hello!', '2024-06-20', '13:00:00', 'Take care', 'New', 'John', 'Sales', 'Contacted', 'false', 1),
	(19, 4, 8, '555-2345', 'Gabriel', 1800, 0, 'gabriel@gmail.com', 'Normal', 'Infinitum', '2024-03-24', '12:00:00', '2024-03-24', '12:30:00', 'Hey there!', '2024-06-21', '15:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(20, 4, 8, '555-3456', 'Carolina', 1900, 1, 'carolina@gmail.com', 'Importante', 'Infinitum', '2024-03-25', '11:30:00', '2024-03-25', '12:00:00', 'Good morning', '2024-06-22', '16:00:00', 'See you later', 'Qualified', 'David', 'Presales', 'Contacted', 'false', 1),
	(21, 4, 9, '555-4567', 'Daniel', 2000, 0, 'daniel@gmail.com', 'Normal', 'Infinitum', '2024-03-26', '09:00:00', '2024-03-26', '09:30:00', 'Hi there', '2024-06-23', '10:30:00', 'Goodbye', 'Cold', 'Emily', 'Marketing', 'Qualified', 'true', 0),
	(22, 4, 9, '555-5678', 'Alejandro', 2100, 1, 'alejandro@gmail.com', 'Urgente', 'Infinitum', '2024-03-27', '10:45:00', '2024-03-27', '11:15:00', 'Hello!', '2024-06-24', '12:00:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(23, 4, 10, '555-6789', 'Valeria', 2200, 0, 'valeria@gmail.com', 'Normal', 'MegaCable', '2024-03-28', '12:30:00', '2024-03-28', '13:00:00', 'Hey there!', '2024-06-25', '14:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(24, 4, 10, '555-7890', 'Lucas', 2300, 1, 'lucas@gmail.com', 'Importante', 'Infinitum', '2024-03-29', '13:15:00', '2024-03-29', '13:45:00', 'Good morning', '2024-06-26', '15:00:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(25, 5, 11, '555-9012', 'Paula', 2400, 0, 'paula@gmail.com', 'Normal', 'Telcel', '2024-03-30', '14:00:00', '2024-03-30', '14:30:00', 'Hi!', '2024-06-27', '16:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(26, 5, 11, '555-1234', 'Julia', 2500, 1, 'julia@gmail.com', 'Urgente', 'Infinitum', '2024-03-31', '15:30:00', '2024-03-31', '16:00:00', 'Hello!', '2024-06-28', '09:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(27, 5, 12, '555-2345', 'Mateo', 2600, 0, 'mateo@gmail.com', 'Normal', 'Movistar', '2024-04-01', '16:45:00', '2024-04-01', '17:15:00', 'Hey there!', '2024-06-29', '10:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(28, 5, 12, '555-3456', 'Isabella', 2700, 1, 'isabella@gmail.com', 'Importante', 'NatGas', '2024-04-02', '17:00:00', '2024-04-02', '17:30:00', 'Good morning', '2024-06-30', '11:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(29, 5, 13, '555-4567', 'David', 2800, 0, 'david@gmail.com', 'Normal', 'MegaCable', '2024-04-03', '09:30:00', '2024-04-03', '10:00:00', 'Hi there', '2024-07-01', '13:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(30, 5, 13, '555-5678', 'Valentina', 2900, 1, 'valentina@gmail.com', 'Urgente', 'MegaCable', '2024-04-04', '10:45:00', '2024-04-04', '11:15:00', 'Hello!', '2024-07-02', '14:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(31, 5, 14, '555-6789', 'Martín', 3000, 0, 'martin@gmail.com', 'Normal', 'MegaCable', '2024-04-05', '11:30:00', '2024-04-05', '12:00:00', 'Hi!', '2024-07-03', '15:00:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(32, 5, 14, '555-7890', 'Carla', 3100, 1, 'carla@gmail.com', 'Importante', 'MegaCable', '2024-04-06', '12:15:00', '2024-04-06', '12:45:00', 'Good morning', '2024-07-04', '09:30:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(33, 6, 15, '555-9012', 'Julián', 3200, 0, 'julian@gmail.com', 'Normal', 'Movistar', '2024-04-07', '13:00:00', '2024-04-07', '13:30:00', 'Hello!', '2024-07-05', '10:45:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(34, 6, 15, '555-2345', 'Fernanda', 3300, 1, 'fernanda@gmail.com', 'Urgente', 'MegaCable', '2024-04-08', '14:30:00', '2024-04-08', '15:00:00', 'Hey there!', '2024-07-06', '11:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(35, 6, 16, '555-3456', 'Juan', 3400, 0, 'juan@gmail.com', 'Normal', 'MegaCable', '2024-04-09', '15:45:00', '2024-04-09', '16:15:00', 'Hi there', '2024-07-07', '12:15:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(36, 6, 16, '555-4567', 'María', 3500, 1, 'maria@gmail.com', 'Importante', 'MegaCable', '2024-04-10', '16:30:00', '2024-04-10', '17:00:00', 'Hello!', '2024-07-08', '13:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(37, 6, 17, '555-5678', 'Diego', 3600, 0, 'diego@gmail.com', 'Normal', 'Movistar', '2024-04-11', '17:45:00', '2024-04-11', '18:15:00', 'Hi!', '2024-07-09', '14:45:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(38, 6, 17, '555-6789', 'Sofía', 3700, 1, 'sofia@gmail.com', 'Urgente', 'NatGas', '2024-04-12', '09:00:00', '2024-04-12', '09:30:00', 'Hey there!', '2024-07-10', '15:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(39, 7, 18, '555-7890', 'Lucas', 3800, 0, 'lucas@gmail.com', 'Normal', 'NatGas', '2024-04-13', '09:30:00', '2024-04-13', '10:00:00', 'Hello!', '2024-07-11', '16:15:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(40, 7, 18, '555-9012', 'Valentina', 3900, 1, 'valentina@gmail.com', 'Importante', 'NatGas', '2024-04-14', '10:00:00', '2024-04-14', '10:30:00', 'Good morning', '2024-07-12', '09:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(41, 7, 19, '555-2345', 'Juan Pablo', 4000, 0, 'juanpablo@gmail.com', 'Normal', 'NatGas', '2024-04-15', '11:15:00', '2024-04-15', '11:45:00', 'Hi!', '2024-07-13', '10:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(42, 7, 19, '555-3456', 'Isabel', 4100, 1, 'isabel@gmail.com', 'pruebaCU', 'Dell', '2024-04-16', '12:00:00', '2024-04-16', '12:30:00', 'Hello!', '2024-07-14', '11:15:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(43, 7, 20, '555-4567', 'Martina', 4200, 0, 'martina@gmail.com', 'Normal', 'Dell', '2024-04-17', '12:45:00', '2024-04-17', '13:15:00', 'Hi there', '2024-07-15', '12:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(44, 7, 20, '555-5678', 'Gabriel', 4300, 1, 'gabriel@gmail.com', 'Importante', 'Dell', '2024-04-18', '13:30:00', '2024-04-18', '14:00:00', 'Good morning', '2024-07-16', '13:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(45, 7, 10, '555-6789', 'Camila', 4400, 0, 'camila@gmail.com', 'Normal', 'Dell', '2024-04-19', '14:15:00', '2024-04-19', '14:45:00', 'Hello!', '2024-07-17', '14:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(46, 7, 10, '555-7890', 'Tomás', 4500, 1, 'tomas@gmail.com', 'Urgente', 'Dell', '2024-04-20', '15:00:00', '2024-04-20', '15:30:00', 'Hey there!', '2024-07-18', '15:15:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(47, 7, 10, '555-9012', 'Isabella', 4600, 0, 'isabella@gmail.com', 'Normal', 'Dell', '2024-04-21', '15:30:00', '2024-04-21', '16:00:00', 'Hi!', '2024-07-19', '16:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(48, 7, 10, '555-1234', 'Matías', 4700, 1, 'matias@gmail.com', 'Importante', 'Dell', '2024-04-22', '16:00:00', '2024-04-22', '16:30:00', 'Hello!', '2024-07-20', '17:00:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(49, 7, 10, '555-2345', 'Valeria', 4800, 0, 'valeria@gmail.com', 'Normal', 'Dell', '2024-04-23', '16:30:00', '2024-04-23', '17:00:00', 'Hi there', '2024-07-21', '17:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(50, 7, 10, '555-3456', 'Emilio', 4900, 1, 'emilio@gmail.com', 'Urgente', 'Dell', '2024-04-24', '17:00:00', '2024-04-24', '17:30:00', 'Hey there!', '2024-07-22', '18:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1);

INSERT  INTO `leads` (`IDLead`, `IDHistorial`, `IDWorkspace`, `Telefono`, `Nombre`, `Valor`, `Ganado`, `Correo`, `Etiqueta`, `Compania`, `Creado`, `Hora_Creacion`, `Fecha_Primer_Mensaje`, `Hora_Primer_Mensaje`, `Primer_Mensaje`, `Fecha_Ultimo_Mensaje`, `Hora_Ultimo_Mensaje`, `Ultimo_Mensaje`, `Estado_Lead`, `Seller_Asignado`, `Embudo`, `Etapa`, `Archivado`, `Creado_Manualmente`) VALUES
	(51, 1, 1, '552-7734', 'Santiago', 1000, 1, 'Pedro@gmail.com', 'Importante', 'Telcel', '2024-03-06', '12:00:00', '2024-03-06', '12:30:00', 'Buenos días ', '2024-06-03', '13:00:00', 'Gracias hasta luego', 'Ended', 'John', 'Presales', 'Contactados', 'true', 0),
	(52, 1, 1, '552-7878', 'Valeria', 1500, 0, 'maria@gmail.com', 'Normal', 'Movistar', '2024-03-07', '11:30:00', '2024-03-07', '12:00:00', 'Hola, ¿cómo estás?', '2024-06-04', '14:00:00', 'Nos vemos pronto', 'In progress', 'Sarah', 'Sales', 'Qualified', 'false', 1),
	(53, 1, 2, '552-7912', 'Leonardo', 2000, 1, 'juan@gmail.com', 'Urgente', 'MegaCable', '2024-03-08', '10:00:00', '2024-03-08', '10:30:00', 'Good morning', '2024-06-05', '15:00:00', 'See you later', 'New', 'Emily', 'Marketing', 'Cold', 'true', 0),
	(54, 1, 2, '552-3456', 'Ximena', 1200, 1, 'ana@gmail.com', 'Importante', 'Infinitum', '2024-03-09', '09:30:00', '2024-03-09', '10:00:00', 'Hi there', '2024-06-06', '16:00:00', 'Take care', 'Qualified', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(55, 1, 3, '552-6789', 'Emiliano', 1800, 0, 'luis@gmail.com', 'Normal', 'Infinitum', '2024-03-10', '08:45:00', '2024-03-10', '09:15:00', 'Hello!', '2024-06-07', '17:00:00', 'Have a great day', 'Cold', 'Sophia', 'Marketing', 'Contacted', 'true', 0),
	(56, 1, 3, '553-4321', 'Regina', 1600, 1, 'laura@gmail.com', 'Urgente', 'Telcel', '2024-03-11', '14:00:00', '2024-03-11', '14:30:00', 'Hey!', '2024-06-08', '18:00:00', 'See you tomorrow', 'Qualified', 'David', 'Sales', 'Contacted', 'false', 1),
	(57, 2, 1, '553-7890', 'Sebastian', 1400, 0, 'carlos@gmail.com', 'Normal', 'Infinitum', '2024-03-12', '13:30:00', '2024-03-12', '14:00:00', 'Hi!', '2024-06-09', '09:00:00', 'Goodbye', 'Cold', 'Emma', 'Marketing', 'Qualified', 'true', 0),
	(58, 2, 3, '553-8901', 'Natalia', 1700, 1, 'marta@gmail.com', 'Importante', 'Infinitum', '2024-03-13', '10:45:00', '2024-03-13', '11:15:00', 'Good morning', '2024-06-10', '10:30:00', 'See you later', 'New', 'Daniel', 'Presales', 'Contacted', 'false', 1),
	(59, 2, 3, '553-6789', 'Donato', 1900, 0, 'elena@gmail.com', 'Normal', 'Infinitum', '2024-03-14', '09:15:00', '2024-03-14', '09:45:00', 'Hello!', '2024-06-11', '11:00:00', 'Have a great day', 'Cold', 'Sophia', 'Marketing', 'Contacted', 'true', 0),
	(60, 2, 3, '553-1234', 'Sofia', 1300, 1, 'diego@gmail.com', 'Urgente', 'Infinitum', '2024-03-15', '12:30:00', '2024-03-15', '13:00:00', 'Hey there!', '2024-06-12', '12:30:00', 'Talk to you later', 'Qualified', 'Sarah', 'Sales', 'Contacted', 'false', 1),
	(61, 2, 4, '553-2345', 'Luis Alejandro', 1400, 0, 'sara@gmail.com', 'Normal', 'Telcel', '2024-03-16', '11:45:00', '2024-03-16', '12:15:00', 'Hello!', '2024-06-13', '13:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Contacted', 'true', 0),
	(62, 2, 4, '553-3456', 'Bernardo', 1500, 1, 'mario@gmail.com', 'Importante', 'Movistar', '2024-03-17', '10:15:00', '2024-03-17', '10:45:00', 'Good morning', '2024-06-14', '14:00:00', 'See you later', 'Qualified', 'Emily', 'Presales', 'Contacted', 'false', 1),
	(63, 3, 5, '554-4567', 'Jimena', 1600, 0, 'lorena@gmail.com', 'Normal', 'Infinitum', '2024-03-18', '09:30:00', '2024-03-18', '10:00:00', 'Hi there', '2024-06-15', '15:30:00', 'Goodbye', 'Cold', 'Michael', 'Marketing', 'Qualified', 'true', 0),
	(64, 3, 5, '554-5678', 'Gael', 1700, 1, 'camila@gmail.com', 'Urgente', 'Infinitum', '2024-03-19', '11:00:00', '2024-03-19', '11:30:00', 'Hello!', '2024-06-16', '16:00:00', 'See you tomorrow', 'New', 'Sophia', 'Sales', 'Contacted', 'false', 1),
	(65, 3, 6, '554-6789', 'Isabella', 1800, 0, 'javier@gmail.com', 'Normal', 'MegaCable', '2024-03-20', '10:30:00', '2024-03-20', '11:00:00', 'Hey there!', '2024-06-17', '17:30:00', 'Talk to you later', 'Cold', 'Daniel', 'Marketing', 'Qualified', 'true', 0),
	(66, 3, 6, '554-7890', 'Andrés', 1900, 1, 'lucia@gmail.com', 'Importante', 'Pinnacle', '2024-03-21', '09:45:00', '2024-03-21', '10:15:00', 'Good morning', '2024-06-18', '12:00:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(67, 3, 7, '554-8901', 'Renata', 2000, 0, 'marcos@gmail.com', 'Normal', 'Telcel', '2024-03-22', '11:00:00', '2024-03-22', '11:30:00', 'Hi!', '2024-06-19', '14:30:00', 'Goodbye', 'Cold', 'Sarah', 'Marketing', 'Qualified', 'true', 0),
	(68, 3, 7, '554-9012', 'Angel', 2200, 1, 'anamaria@gmail.com', 'Urgente', 'Infinitum', '2024-03-23', '10:15:00', '2024-03-23', '10:45:00', 'Hello!', '2024-06-20', '13:00:00', 'Take care', 'New', 'John', 'Sales', 'Contacted', 'false', 1),
	(69, 4, 8, '554-2345', 'Valentina', 1800, 0, 'gabriel@gmail.com', 'Normal', 'Infinitum', '2024-03-24', '12:00:00', '2024-03-24', '12:30:00', 'Hey there!', '2024-06-21', '15:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(70, 4, 8, '557-3456', 'Daniel', 1900, 1, 'carolina@gmail.com', 'Importante', 'Infinitum', '2024-03-25', '11:30:00', '2024-03-25', '12:00:00', 'Good morning', '2024-06-22', '16:00:00', 'See you later', 'Qualified', 'David', 'Presales', 'Contacted', 'false', 1),
	(71, 4, 9, '557-4567', 'Luis Daniel', 2000, 0, 'daniel@gmail.com', 'Normal', 'Infinitum', '2024-03-26', '09:00:00', '2024-03-26', '09:30:00', 'Hi there', '2024-06-23', '10:30:00', 'Goodbye', 'Cold', 'Emily', 'Marketing', 'Qualified', 'true', 0),
	(72, 4, 9, '557-5678', 'Juan Pablo', 2100, 1, 'alejandro@gmail.com', 'Urgente', 'Infinitum', '2024-03-27', '10:45:00', '2024-03-27', '11:15:00', 'Hello!', '2024-06-24', '12:00:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(73, 4, 10, '575-6789', 'Luciana', 2200, 0, 'valeria@gmail.com', 'Normal', 'MegaCable', '2024-03-28', '12:30:00', '2024-03-28', '13:00:00', 'Hey there!', '2024-06-25', '14:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(74, 4, 10, '575-7890', 'Javier', 2300, 1, 'lucas@gmail.com', 'Importante', 'Infinitum', '2024-03-29', '13:15:00', '2024-03-29', '13:45:00', 'Good morning', '2024-06-26', '15:00:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(75, 5, 11, '575-9012', 'Fernando', 2400, 0, 'paula@gmail.com', 'Normal', 'Telcel', '2024-03-30', '14:00:00', '2024-03-30', '14:30:00', 'Hi!', '2024-06-27', '16:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(76, 5, 11, '575-1234', 'Victoria', 2500, 1, 'julia@gmail.com', 'Urgente', 'Infinitum', '2024-03-31', '15:30:00', '2024-03-31', '16:00:00', 'Hello!', '2024-06-28', '09:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(77, 5, 12, '585-2345', 'Elena', 2600, 0, 'mateo@gmail.com', 'Normal', 'Movistar', '2024-04-01', '16:45:00', '2024-04-01', '17:15:00', 'Hey there!', '2024-06-29', '10:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(78, 5, 12, '585-3456', 'Ernesto', 2700, 1, 'isabella@gmail.com', 'Importante', 'NatGas', '2024-04-02', '17:00:00', '2024-04-02', '17:30:00', 'Good morning', '2024-06-30', '11:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(79, 5, 13, '585-4567', 'Ivana', 2800, 0, 'david@gmail.com', 'Normal', 'MegaCable', '2024-04-03', '09:30:00', '2024-04-03', '10:00:00', 'Hi there', '2024-07-01', '13:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(80, 5, 13, '585-5678', 'Valentino', 2900, 1, 'valentina@gmail.com', 'Urgente', 'MegaCable', '2024-04-04', '10:45:00', '2024-04-04', '11:15:00', 'Hello!', '2024-07-02', '14:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(81, 5, 14, '585-6789', 'Manuel', 3000, 0, 'martin@gmail.com', 'Normal', 'MegaCable', '2024-04-05', '11:30:00', '2024-04-05', '12:00:00', 'Hi!', '2024-07-03', '15:00:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(82, 5, 14, '585-7890', 'Carla', 3100, 1, 'carla@gmail.com', 'Importante', 'MegaCable', '2024-04-06', '12:15:00', '2024-04-06', '12:45:00', 'Good morning', '2024-07-04', '09:30:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(83, 6, 15, '585-9012', 'Karla', 3200, 0, 'julian@gmail.com', 'Normal', 'Movistar', '2024-04-07', '13:00:00', '2024-04-07', '13:30:00', 'Hello!', '2024-07-05', '10:45:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(84, 6, 15, '585-2345', 'Francisco', 3300, 1, 'fernanda@gmail.com', 'Urgente', 'MegaCable', '2024-04-08', '14:30:00', '2024-04-08', '15:00:00', 'Hey there!', '2024-07-06', '11:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(85, 6, 16, '585-3456', 'Paco', 3400, 0, 'juan@gmail.com', 'Normal', 'MegaCable', '2024-04-09', '15:45:00', '2024-04-09', '16:15:00', 'Hi there', '2024-07-07', '12:15:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(86, 6, 16, '585-4567', 'María Belen', 3500, 1, 'maria@gmail.com', 'Importante', 'MegaCable', '2024-04-10', '16:30:00', '2024-04-10', '17:00:00', 'Hello!', '2024-07-08', '13:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(87, 6, 17, '595-5678', 'Belem', 3600, 0, 'diego@gmail.com', 'Normal', 'Movistar', '2024-04-11', '17:45:00', '2024-04-11', '18:15:00', 'Hi!', '2024-07-09', '14:45:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(88, 6, 17, '595-6789', 'Oscar', 3700, 1, 'sofia@gmail.com', 'Urgente', 'NatGas', '2024-04-12', '09:00:00', '2024-04-12', '09:30:00', 'Hey there!', '2024-07-10', '15:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(89, 7, 18, '595-7890', 'Pedro', 3800, 0, 'lucas@gmail.com', 'Normal', 'NatGas', '2024-04-13', '09:30:00', '2024-04-13', '10:00:00', 'Hello!', '2024-07-11', '16:15:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(90, 7, 18, '595-9012', 'Nicole', 3900, 1, 'valentina@gmail.com', 'Importante', 'NatGas', '2024-04-14', '10:00:00', '2024-04-14', '10:30:00', 'Good morning', '2024-07-12', '09:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(91, 7, 19, '595-2345', 'Alexis', 4000, 0, 'juanpablo@gmail.com', 'Normal', 'NatGas', '2024-04-15', '11:15:00', '2024-04-15', '11:45:00', 'Hi!', '2024-07-13', '10:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(92, 7, 19, '595-3456', 'Alexys', 4100, 1, 'isabel@gmail.com', 'pruebaCU', 'Dell', '2024-04-16', '12:00:00', '2024-04-16', '12:30:00', 'Hello!', '2024-07-14', '11:15:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(93, 7, 20, '595-4567', 'Martina', 4200, 0, 'martina@gmail.com', 'Normal', 'Dell', '2024-04-17', '12:45:00', '2024-04-17', '13:15:00', 'Hi there', '2024-07-15', '12:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(94, 7, 20, '595-5678', 'Gabriel', 4300, 1, 'gabriel@gmail.com', 'Importante', 'Dell', '2024-04-18', '13:30:00', '2024-04-18', '14:00:00', 'Good morning', '2024-07-16', '13:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(95, 7, 10, '525-6789', 'Esteban', 4400, 0, 'camila@gmail.com', 'Normal', 'Dell', '2024-04-19', '14:15:00', '2024-04-19', '14:45:00', 'Hello!', '2024-07-17', '14:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(96, 7, 10, '525-7890', 'Antonio', 4500, 1, 'tomas@gmail.com', 'Urgente', 'Dell', '2024-04-20', '15:00:00', '2024-04-20', '15:30:00', 'Hey there!', '2024-07-18', '15:15:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(97, 7, 10, '525-9012', 'Iris', 4600, 0, 'isabella@gmail.com', 'Normal', 'Dell', '2024-04-21', '15:30:00', '2024-04-21', '16:00:00', 'Hi!', '2024-07-19', '16:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(98, 7, 10, '525-1234', 'Eunice', 4700, 1, 'matias@gmail.com', 'Importante', 'Dell', '2024-04-22', '16:00:00', '2024-04-22', '16:30:00', 'Hello!', '2024-07-20', '17:00:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(99, 7, 10, '525-2345', 'Jessica', 4800, 0, 'valeria@gmail.com', 'Normal', 'Dell', '2024-04-23', '16:30:00', '2024-04-23', '17:00:00', 'Hi there', '2024-07-21', '17:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(100, 7, 10, '525-3456', 'Mariana', 4900, 1, 'emilio@gmail.com', 'Urgente', 'Dell', '2024-04-24', '17:00:00', '2024-04-24', '17:30:00', 'Hey there!', '2024-07-22', '18:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1);

UPDATE leads
SET Correo = CONCAT(Nombre, '@gmail.com')

UPDATE leads
SET Compania = 
    CASE 
        WHEN IDLead BETWEEN 1 AND 15 THEN 'Telcel'
        WHEN IDLead BETWEEN 16 AND 25 THEN 'Acme'
        WHEN IDLead BETWEEN 26 AND 30 THEN 'Movistar'
        WHEN IDLead BETWEEN 31 AND 38 THEN 'Dell'
        WHEN IDLead BETWEEN 39 AND 50 THEN 'Pinnacle'
    END
WHERE IDLead BETWEEN 1 AND 50;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
