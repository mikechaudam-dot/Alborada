USE alborada;
-- --------------------------------------------------------
-- Insertamos datos 
-- --------------------------------------------------------

-- Tabla 1 entidad 
INSERT INTO entidad (id_entidad, nombre, telefono, correo, direccion, sector) VALUES
('ENT-001', 'Ministerio de Transporte y Obras Públicas', '600111222', 'contacto@transporte.gob', 'Av. de la Constitución 45', 'Infraestructura'),
('ENT-002', 'Servicio de Salud Metropolitano', '600333444', 'adquisiciones@saludmetro.gob', 'Calle Hospital Central 12', 'Salud'),
('ENT-003', 'Secretaría de Educación Distrital', '600555666', 'licitaciones@educaciondistrito.gob', 'Carrera del Saber 88', 'Educación'),
('ENT-004', 'Agencia Nacional de Infraestructura Digital', '600777888', 'proyectos@anidigital.gob', 'Paseo de la Innovación 101', 'Tecnología'),
('ENT-005', 'Ayuntamiento de Alborada', '600999000', 'compras@alborada.es', 'Plaza Mayor 1', 'Administración Local'),
('ENT-006', 'Empresa Pública de Aguas del Norte', NULL, 'info@aguasnorte.es', 'Vía del Río 4', 'Servicios Públicos'),
('ENT-007', 'Instituto de Innovación y Ciencia', '600222333', 'licita@cienciainnova.org', 'Av. Científica 7', 'Investigación'),
('ENT-008', 'Cuerpo de Bomberos Unificado', '600444555', 'logistica@bomberosuni.org', 'Calle del Fuego 2', 'Seguridad y Emergencias'),
('ENT-009', 'Banco Central de Desarrollo', '600666777', 'proveedores@bancodesarrollo.org', 'Calle Financiera 50', 'Finanzas'),
('ENT-010', 'Patronato de Vivienda Social', NULL, 'vivienda@patronatosocial.org', 'Barrio Nuevo Bloque 3', 'Vivienda');
-- Tabla 2 trabajador
INSERT INTO trabajador (id_trabajador, nombre, telefono, correo, rol, porcentaje_ganancia) VALUES
('TRAB-001', 'Carlos Mendoza', '611001001', 'carlos.mendoza@alborada.com', 'Director de Proyectos', 5.50),
('TRAB-002', 'Ana María Gómez', '611002002', 'ana.gomez@alborada.com', 'Especialista Jurídico', 3.00),
('TRAB-003', 'Ingrid Johana Vega', NULL, 'ingrid.vega@alborada.com', 'Ingeniero de Software Senior', 4.20),
('TRAB-004', 'Luis Fernando Plaza', '611004004', 'luis.plaza@alborada.com', 'Asesor de Licitaciones', 2.50),
('TRAB-005', 'Diana Sofía Restrepo', '611005005', 'diana.restrepo@alborada.com', 'Contadora Senior', 1.80),
('TRAB-006', 'Roberto Carlos Sierra', NULL, 'roberto.sierra@alborada.com', 'Arquitecto de Soluciones', 4.50),
('TRAB-007', 'Marta Elena Castro', '611007007', 'marta.castro@alborada.com', 'Gestor de Compras', 2.00),
('TRAB-008', 'Juan David Alarcón', '611008008', 'juan.alarcon@alborada.com', 'Administrador de Contratos', 3.10),
('TRAB-009', 'Lucía Fernanda Rincón', '611009009', 'lucia.rincon@alborada.com', 'Especialista Financiero', 2.80),
('TRAB-010', 'Andrés Felipe Muñoz', NULL, 'andres.munoz@alborada.com', 'Coordinador Técnico', 3.50);
-- Tabla 3 proveedor
INSERT INTO proveedor (id_proveedor, nombre, telefono, correo, direccion, sector, tipo_distribucion, forma_juridica) VALUES
('PROV-001', 'Sistemas Tecnológicos Avanzados S.A.', '622001001', 'ventas@sistecavanzados.com', 'Polígono Industrial El Cortijo 12', 'Tecnología', 'Mayorista', 'Sociedad Anónima'),
('PROV-002', 'Constructoras Asociadas del Norte S.L.', '622002002', 'licitaciones@constrenorte.com', 'Av. del Progreso Sanitario 4', 'Infraestructura', 'Directa', 'Sociedad Limitada'),
('PROV-003', 'Suministros Médicos Globales', NULL, 'contacto@sumedicosglobal.com', 'Calle de la Salud 45', 'Salul', 'Distribuidor Oficial', 'Sociedad Anónima'),
('PROV-004', 'Dotaciones y Mobiliario Alborada', '622004004', 'info@dotacionesalborada.es', 'Camino del Polígono s/n', 'Mobiliario', 'Minorista', 'Sociedad Limitada'),
('PROV-005', 'Consultores de Seguridad Integrales', '622005005', 'proyectos@seguridadintegral.com', 'Pasaje de la Protección 9', 'Seguridad', 'Directa', 'Sociedad Anónima'),
('PROV-006', 'Soluciones de Limpieza y Mantenimiento S.L.', NULL, 'servicios@limpiezasoluciones.es', 'Calle de la Higiene 18', 'Servicios', 'Directa', 'Sociedad Limitada'),
('PROV-007', 'Editorial y Papelería del Saber S.A.', '622007007', 'pedidos@editorialsaber.com', 'Avenida del Libro 3', 'Educación', 'Mayorista', 'Sociedad Anónima'),
('PROV-008', 'Alimentos y Logística Institucional', '622008008', 'comercial@alimentosinstitucionales.com', 'Ruta Logística Km 4', 'Alimentación', 'Logística Integral', 'Sociedad Anónima'),
('PROV-009', 'Ecogestión de Residuos Ambientales', '622009009', 'licitas@ecogestion.es', 'Polígono Industrial Verde 5', 'Medio Ambiente', 'Directa', 'Sociedad Limitada'),
('PROV-010', 'Energías Renovables de la Costa', NULL, 'proyectos@energiacosta.es', 'Muelle de Carga Este s/n', 'Energía', 'Mayorista', 'Sociedad Anónima');
-- Tabla 4 contrato
INSERT INTO contrato (id_contrato, valor, fecha_inicio, fecha_fin, garantias) VALUES
('CONT-2026-001', 450000.00, '2026-01-15 08:00:00', '2026-12-31 18:00:00', 'Póliza de Cumplimiento 10%'),
('CONT-2026-002', 1250000.50, '2026-02-01 09:00:00', '2027-02-01 18:00:00', 'Aval Bancario de Buena Ejecución'),
('CONT-2026-003', 85000.00, '2026-03-10 08:00:00', '2026-06-10 17:00:00', 'Retención de Garantía 5%'),
('CONT-2026-004', 2300000.00, '2026-04-01 07:30:00', '2028-04-01 18:00:00', 'Póliza de Responsabilidad Civil'),
('CONT-2026-005', 34000.00, '2026-04-15 08:00:00', '2026-05-15 17:00:00', NULL),
('CONT-2026-006', 560000.00, '2026-05-01 08:30:00', '2026-11-01 18:00:00', 'Póliza de Estabilidad de Obra'),
('CONT-2026-007', 12000.00, '2026-05-20 09:00:00', '2026-06-20 17:00:00', NULL),
('CONT-2026-008', 785000.00, '2026-06-01 08:00:00', '2027-06-01 18:00:00', 'Garantía de Fábrica de 3 años'),
('CONT-2026-009', 190000.00, '2026-07-01 08:00:00', '2026-12-31 17:00:00', 'Póliza de Salarios y Prestaciones'),
('CONT-2026-010', 3100000.00, '2026-08-01 07:00:00', '2029-08-01 18:00:00', 'Aval Bancario Integral');
-- Tabla 5 producto
INSERT INTO producto (nombre, referencia, caracteristicas, unidad_medida, precio) VALUES
('Servidor Rack Intel Xeon 64GB', 'SRV-XEON-2026', 'Servidor de alta densidad para base de datos empresariales, 2TB SSD NVMe.', 'Unidades', 4500.00),
('Licencia ERP Alborada Cloud v5', 'LIC-ERP-CLD', 'Licencia anual por usuario concurrente para gestión pública integrada.', 'Licencias', 120.50),
('Cemento Portland Gris Tipo I', 'CEM-PORT-G1', 'Saco de cemento de 50Kg de alta resistencia para estructuras y cimientos.', 'Sacos', 8.40),
('Monitor Profesional 27 Pulgadas 4K', 'MON-4K-27', 'Monitor con panel IPS, calibración de fábrica y conexiones HDMI/DisplayPort.', 'Unidades', 320.00),
('Computador Portátil Core i7 16GB', 'LAP-I7-16G', 'Ultrabook corporativo con pantalla de 14 pulgadas y almacenamiento de 512GB SSD.', 'Unidades', 950.00),
('Escritorio Ergonómico de Oficina', 'MUE-ESC-ERG', 'Mesa regulable en altura con pasacables y estructura de acero reforzado.', 'Unidades', 210.00),
('Silla de Tareas Operativa Sincro', 'MUE-SIL-OP', 'Silla con respaldo de malla transpirable, soporte lumbar y brazos regulables.', 'Unidades', 145.00),
('Kit de Primeros Auxilios Tipo B', 'MED-KIT-B', 'Maletín reglamentario para atención de emergencias institucionales.', 'Kits', 75.00),
('Papel Fotocopia DIN A4 80g', 'PAP-A4-80G', 'Caja de 5 resmas de papel blanco de alta opacidad para impresión láser.', 'Cajas', 18.90),
('Panel Solar Monocristalino 450W', 'ENE-PAN-450W', 'Módulo fotovoltaico de alta eficiencia con protección climática IP68.', 'Unidades', 185.00);
-- Tabla 6 funcionario (Nivel 2 - Depemde de entidad)
INSERT INTO funcionario (id_funcionario, nombre, telefono, correo, cargo, entidad_id) VALUES
('FUNC-001', 'Ricardo Pérez', '633001001', 'ricardo.perez@transporte.gob', 'Jefe de Contrataciones', 'ENT-001'),
('FUNC-002', 'Gabriela Luna', '633002002', 'gabriela.luna@saludmetro.gob', 'Directora de Suministros', 'ENT-002'),
('FUNC-003', 'Manuel Estévez', '633003003', 'manuel.estevez@educaciondistrito.gob', 'Supervisor de Licitaciones', 'ENT-003'),
('FUNC-004', 'Patricia Jaramillo', '633004004', NULL, 'Analista Técnico de Infraestructura', 'ENT-004'),
('FUNC-005', 'Santiago Arias', '633005005', 'santiago.arias@alborada.es', 'Tesorero Municipal', 'ENT-005'),
('FUNC-006', 'Elena Benítez', '633006006', 'elena.benitez@aguasnorte.es', 'Coordinadora de Proyectos Hidráulicos', 'ENT-006'),
('FUNC-007', 'Jorge Luis Torres', '633007007', NULL, 'Secretario General', 'ENT-007'),
('FUNC-008', 'Beatriz Pinzón', '633008008', 'beatriz.pinzon@bomberosuni.org', 'Jefe de Almacén e Inventario', 'ENT-008'),
('FUNC-009', 'Mauricio Cárdenas', '633009009', 'mauricio.cardenas@bancodesarrollo.org', 'Gerente de Compras Públicas', 'ENT-009'),
('FUNC-010', 'Clara Inés Rey', '633010010', 'clara.rey@patronatosocial.org', 'Abogada Revisor Financiero', 'ENT-010');
-- Tabla 7 licitacion (Nivel 2 - Depende de entidad y trabajador)
INSERT INTO licitacion (id_licitacion, fecha_cierre, evaluacion_pre, fecha_subsanacion, evaluacion_final, tipo_evaluacion, garantias, presupuesto, sector, entidad_id, trabajador_id) VALUES
('LIC-2026-INFRA-01', '2026-06-15 14:00:00', '2026-06-20 09:00:00', '2026-06-25 17:00:00', '2026-07-05 16:00:00', 'Puntos y Porcentajes', 'Seriedad de la Oferta 5%', 500000.00, 'Infraestructura', 'ENT-001', 'TRAB-004'),
('LIC-2026-SALUD-02', '2026-07-01 11:00:00', '2026-07-10 10:00:00', '2026-07-15 17:00:00', '2026-07-22 15:00:00', 'Precio Más Bajo', 'Seriedad de la Oferta 10%', 1300000.00, 'Salud', 'ENT-002', 'TRAB-002'),
('LIC-2026-EDUC-03', '2026-04-10 12:00:00', '2026-04-15 09:00:00', '2026-04-20 17:00:00', '2026-04-30 14:00:00', 'Puntos y Porcentajes', 'Póliza de Cumplimiento', 95000.00, 'Educación', 'ENT-003', 'TRAB-004'),
('LIC-2026-DIGI-04', '2026-08-20 15:00:00', '2026-08-30 11:00:00', '2026-09-05 17:00:00', '2026-09-15 16:00:00', 'Evaluación Técnica Excluyente', 'Seriedad de la Oferta 5%', 2500000.00, 'Tecnología', 'ENT-004', 'TRAB-001'),
('LIC-2026-AYUNT-05', '2026-03-01 13:00:00', '2026-03-05 10:00:00', '2026-03-10 17:00:00', '2026-03-15 12:00:00', 'Precio Más Bajo', NULL, 40000.00, 'Mobiliario', 'ENT-005', 'TRAB-002'),
('LIC-2026-AGUA-06', '2026-09-12 10:00:00', '2026-09-20 09:00:00', '2026-09-25 17:00:00', '2026-10-05 15:00:00', 'Puntos y Porcentajes', 'Garantía Global', 600000.00, 'Servicios Públicos', 'ENT-006', 'TRAB-008'),
('LIC-2026-CIEN-07', '2026-05-02 14:00:00', '2026-05-05 11:00:00', '2026-05-08 17:00:00', '2026-05-12 16:00:00', 'Propuesta Técnica Sobrada', NULL, 15000.00, 'Investigación', 'ENT-007', 'TRAB-009'),
('LIC-2026-BOMB-08', '2026-10-01 12:00:00', '2026-10-10 09:00:00', '2026-10-15 17:00:00', '2026-10-22 14:00:00', 'Precio Más Bajo', 'Seriedad de la Oferta 5%', 800000.00, 'Seguridad y Emergencias', 'ENT-008', 'TRAB-007'),
('LIC-2026-FINAN-09', '2026-11-15 16:00:00', '2026-11-20 10:00:00', '2026-11-25 17:00:00', '2026-12-05 15:00:00', 'Puntos y Porcentajes', 'Garantía Bancaria 8%', 200000.00, 'Finanzas', 'ENT-009', 'TRAB-005'),
('LIC-2026-VIV-10', '2026-12-01 11:00:00', '2026-12-15 09:00:00', '2026-12-20 17:00:00', '2027-01-10 13:00:00', 'Puntos y Porcentajes', 'Garantía Contractual Integral', 3300000.00, 'Vivienda', 'ENT-010', 'TRAB-001');
-- Tabla 8 ejecuta (Intermedia - Depende de contratoy trabajador)
INSERT INTO ejecuta (contrato_id, trabajador_id, tipo_de_fase, fecha_inicio, fecha_fin) VALUES
('CONT-2026-001', 'TRAB-001', 'Análisis y Planeación', '2026-01-15 08:00:00', '2026-02-15 18:00:00'),
('CONT-2026-001', 'TRAB-003', 'Desarrollo de Ingeniería', '2026-02-16 08:00:00', '2026-06-30 18:00:00'),
('CONT-2026-002', 'TRAB-006', 'Arquitectura Base', '2026-02-01 09:00:00', '2026-04-01 18:00:00'),
('CONT-2026-002', 'TRAB-003', 'Fase de Codificación Principal', '2026-04-02 08:00:00', '2026-12-01 18:00:00'),
('CONT-2026-003', 'TRAB-010', 'Montaje Técnico Inicial', '2026-03-10 08:00:00', '2026-04-10 17:00:00'),
('CONT-2026-004', 'TRAB-001', 'Diseño Estructural Macro', '2026-04-01 07:30:00', '2026-08-01 18:00:00'),
('CONT-2026-005', 'TRAB-005', 'Auditoría de Cierre Express', '2026-04-15 08:00:00', '2026-05-15 17:00:00'),
('CONT-2026-006', 'TRAB-008', 'Inspección de Terreno', '2026-05-01 08:30:00', '2026-06-15 18:00:00'),
('CONT-2026-008', 'TRAB-007', 'Logística de Despliegue', '2026-06-01 08:00:00', '2026-08-01 18:00:00'),
('CONT-2026-010', 'TRAB-001', 'Dirección de Fase Cimiento', '2026-08-01 07:00:00', '2027-02-01 18:00:00');
-- tabla 9 gestina (Intermedia - Depende de entidad y contrato)
INSERT INTO gestiona (entidad_id, contrato_id) VALUES
('ENT-001', 'CONT-2026-001'),
('ENT-002', 'CONT-2026-002'),
('ENT-003', 'CONT-2026-003'),
('ENT-004', 'CONT-2026-004'),
('ENT-005', 'CONT-2026-005'),
('ENT-006', 'CONT-2026-006'),
('ENT-007', 'CONT-2026-007'),
('ENT-008', 'CONT-2026-008'),
('ENT-009', 'CONT-2026-009'),
('ENT-010', 'CONT-2026-010');
-- Tabla 10 tiene (Intermedia - Depende de producto y contrato)
INSERT INTO tiene (producto_id, contrato_id) VALUES
(1, 'CONT-2026-001'),
(5, 'CONT-2026-001'),
(2, 'CONT-2026-002'),
(4, 'CONT-2026-002'),
(9, 'CONT-2026-003'),
(3, 'CONT-2026-004'),
(6, 'CONT-2026-005'),
(7, 'CONT-2026-006'),
(8, 'CONT-2026-007'),
(10, 'CONT-2026-008');
-- Tabla 11 abjudica (Depende de licitacion y contrato)
INSERT INTO abjudica (licitacion_id, contrato_id) VALUES
('LIC-2026-INFRA-01', 'CONT-2026-001'),
('LIC-2026-SALUD-02', 'CONT-2026-002'),
('LIC-2026-EDUC-03', 'CONT-2026-003'),
('LIC-2026-DIGI-04', 'CONT-2026-004'),
('LIC-2026-AYUNT-05', 'CONT-2026-005'),
('LIC-2026-AGUA-06', 'CONT-2026-006'),
('LIC-2026-CIEN-07', 'CONT-2026-007'),
('LIC-2026-BOMB-08', 'CONT-2026-008'),
('LIC-2026-FINAN-09', 'CONT-2026-009'),
('LIC-2026-VIV-10', 'CONT-2026-010');
-- Tabla 12 distribuye (Depende de provedor y producto)
INSERT INTO distribuye (proveedor_id, producto_id) VALUES
('PROV-001', 1),
('PROV-001', 2),
('PROV-002', 3),
('PROV-001', 4),
('PROV-001', 5),
('PROV-004', 6),
('PROV-004', 7),
('PROV-003', 8),
('PROV-007', 9),
('PROV-010', 10);