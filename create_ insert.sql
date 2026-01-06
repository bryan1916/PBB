CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(50),
    fecha_registro DATE
);
INSERT INTO clientes (cliente_id, nombre, ciudad, fecha_registro) 
VALUES
    (1, 'Ana Torres', 'Bogotá', '2024-03-01'),
    (2, 'Juan Pérez', 'Medellín', '2023-12-15'),
    (3, 'Carlos López', 'Cali', '2024-01-20');
	
CREATE TABLE "PBB".transacciones (
	cliente_id_transacciones int2 NOT NULL,
	id_transaccion int2 NULL,
	fecha date NULL,
	monto numeric(5) NULL,
	tipo varchar(6) NULL,
	cliente_id_clientes int2 NULL,
	nombre varchar NULL,
	ciudad varchar NULL,
	fecha_registro date NULL
);

CREATE TABLE "PBB".transacciones_error (
	id_transaccion int2 NULL,
	cliente_id int2 NULL,
	fecha varchar(8) NULL,
	monto numeric(5) NULL,
	tipo varchar(6) NULL,
	"errorCode" varchar(255) NULL,
	"errorMessage" varchar(255) NULL
);

CREATE TABLE "PBB".log_error (
	moment timestamp(0) NULL,
	pid varchar(20) NULL,
	root_pid varchar(20) NULL,
	father_pid varchar(20) NULL,
	project varchar(50) NULL,
	job varchar(255) NULL,
	context varchar(50) NULL,
	priority int4 NULL,
	"type" varchar(255) NULL,
	origin varchar(255) NULL,
	message varchar(255) NULL,
	code int4 NULL
);
