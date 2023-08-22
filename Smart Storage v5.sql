set serveroutput on;
SET VERIFY OFF;


DROP TABLE PROVEEDORES;
DROP TABLE CLIENTES;
DROP TABLE CATEGORIAS;
DROP TABLE PRODUCTOS;
DROP TABLE FACTURACION;
DROP TABLE EMPLEADOS;
DROP TABLE POSICION;


CREATE TABLE PROVEEDORES(
NOMBRE_PROVEEDOR VARCHAR2(25),
FECHA_CONTRATO DATE NOT NULL,
CORREO_PROVEEDOR VARCHAR2(25),
TELEFONO_PROVEEDOR VARCHAR2(15),
ID_PROVEEDOR INT NOT NULL,
PRIMARY KEY (ID_PROVEEDOR)
);

INSERT INTO PROVEEDORES (NOMBRE_PROVEEDOR,FECHA_CONTRATO,CORREO_PROVEEDOR,TELEFONO_PROVEEDOR,ID_PROVEEDOR)
VALUES ('INTERFRUT','05/03/2013', 'INTERFRUT@GMAIL.COM', '7777-7777', '21');
INSERT INTO PROVEEDORES (NOMBRE_PROVEEDOR,FECHA_CONTRATO,CORREO_PROVEEDOR,TELEFONO_PROVEEDOR,ID_PROVEEDOR)
VALUES ('FRUVER','09/10/2016', 'FRUVER@HOTMAIL.COM', '4444-4444', '22');
INSERT INTO PROVEEDORES (NOMBRE_PROVEEDOR,FECHA_CONTRATO,CORREO_PROVEEDOR,TELEFONO_PROVEEDOR,ID_PROVEEDOR)
VALUES ('JACKS','25/12/2020', 'JACKS@HOTMAIL.COM', '5555-5555', '23');
INSERT INTO PROVEEDORES (NOMBRE_PROVEEDOR,FECHA_CONTRATO,CORREO_PROVEEDOR,TELEFONO_PROVEEDOR,ID_PROVEEDOR)
VALUES ('DON FERNANDO','14/02/2023', 'DONFERNANDO@YAHOO.COM', '6666-6666', '24');
INSERT INTO PROVEEDORES (NOMBRE_PROVEEDOR,FECHA_CONTRATO,CORREO_PROVEEDOR,TELEFONO_PROVEEDOR,ID_PROVEEDOR)
VALUES ('SULI','10/01/2023', 'SULI@GMAIL.COM', '1111-1111','25');
INSERT INTO PROVEEDORES (NOMBRE_PROVEEDOR,FECHA_CONTRATO,CORREO_PROVEEDOR,TELEFONO_PROVEEDOR,ID_PROVEEDOR)
VALUES ('COCA COLA','12/04/2020', 'COCACOLA@GMAIL.COM', '2222-2222', '26');
INSERT INTO PROVEEDORES (NOMBRE_PROVEEDOR,FECHA_CONTRATO,CORREO_PROVEEDOR,TELEFONO_PROVEEDOR,ID_PROVEEDOR)
VALUES ('IMPERIAL','19/08/1998', 'IMPERIAL@GMAIL.COM', '8888-8888', '27');
INSERT INTO PROVEEDORES (NOMBRE_PROVEEDOR,FECHA_CONTRATO,CORREO_PROVEEDOR,TELEFONO_PROVEEDOR,ID_PROVEEDOR)
VALUES ('EL ARREO','23/03/2021', 'ELARREO@GMAIL.COM', '9999-9999', '28');
INSERT INTO PROVEEDORES (NOMBRE_PROVEEDOR,FECHA_CONTRATO,CORREO_PROVEEDOR,TELEFONO_PROVEEDOR,ID_PROVEEDOR)
VALUES ('SARDIMAR','30/07/2022', 'SARDIMAR@GMAIL.COM', '3333-3333', '29');
 


CREATE TABLE CLIENTES (
NOMBRE_CLIENTE VARCHAR2 (50),
PRIMER_APELLIDO_CLIENTE VARCHAR2(15),
SEGUNDO_APELLIDO_CLIENTE VARCHAR2(15),
CORREO_CLIENTE VARCHAR2(40),
TELEFONO_CLIENTE VARCHAR2(10),
CEDULA_CLIENTE VARCHAR (15),
PRIMARY KEY(CEDULA_CLIENTE));


INSERT INTO CLIENTES(NOMBRE_CLIENTE,PRIMER_APELLIDO_CLIENTE,SEGUNDO_APELLIDO_CLIENTE,CORREO_CLIENTE,TELEFONO_CLIENTE,CEDULA_CLIENTE)
VALUES ('ROBERTO','ALFARO','JIMENEZ','ROBERTOALFA@GMAIL.COM','8990-1231','2-4213-8749');
INSERT INTO CLIENTES(NOMBRE_CLIENTE,PRIMER_APELLIDO_CLIENTE,SEGUNDO_APELLIDO_CLIENTE,CORREO_CLIENTE,TELEFONO_CLIENTE,CEDULA_CLIENTE)
VALUES ('MARCO','ARIAS','HERNANDEZ','MARCOARIAS@GMAIL.COM','8241-1174','5-1253-3641');
INSERT INTO CLIENTES(NOMBRE_CLIENTE,PRIMER_APELLIDO_CLIENTE,SEGUNDO_APELLIDO_CLIENTE,CORREO_CLIENTE,TELEFONO_CLIENTE,CEDULA_CLIENTE)
VALUES ('MARIA','SOTO','VARGAS','MARIASOTO@HOTMAIL.COM','6289-9856','6-6527-1900');
INSERT INTO CLIENTES(NOMBRE_CLIENTE,PRIMER_APELLIDO_CLIENTE,SEGUNDO_APELLIDO_CLIENTE,CORREO_CLIENTE,TELEFONO_CLIENTE,CEDULA_CLIENTE)
VALUES ('JIMENA','PEREZ','GONZALEZ','JIMENAPEREZ@YAHOO.COM','7920-4293','3-2293-6159');
INSERT INTO CLIENTES(NOMBRE_CLIENTE,PRIMER_APELLIDO_CLIENTE,SEGUNDO_APELLIDO_CLIENTE,CORREO_CLIENTE,TELEFONO_CLIENTE,CEDULA_CLIENTE)
VALUES ('BRYAN','MURILLO','RAMOS','BRYANMURILLO@GMAIL.COM','8559-2543','8-0982-1564');
INSERT INTO CLIENTES(NOMBRE_CLIENTE,PRIMER_APELLIDO_CLIENTE,SEGUNDO_APELLIDO_CLIENTE,CORREO_CLIENTE,TELEFONO_CLIENTE,CEDULA_CLIENTE)
VALUES ('ANGIE','PERAZA','SOTO','ANGIEPERAZA@HOTMAIL.COM','8499-5219','4-0731-4791');

CREATE TABLE CATEGORIAS(
CATEGORIA VARCHAR2(20),
ID_CATEGORIA INT NOT NULL,
PRIMARY KEY (ID_CATEGORIA));

INSERT INTO CATEGORIAS(CATEGORIA,ID_CATEGORIA)
VALUES ('FRUTAS','1');
INSERT INTO CATEGORIAS(CATEGORIA,ID_CATEGORIA)
VALUES ('VERDURAS','2');
INSERT INTO CATEGORIAS(CATEGORIA,ID_CATEGORIA)
VALUES ('CEREALES Y GRANOS','3');
INSERT INTO CATEGORIAS(CATEGORIA,ID_CATEGORIA)
VALUES ('CARNES','4');
INSERT INTO CATEGORIAS(CATEGORIA,ID_CATEGORIA)
VALUES ('LACTEOS','5');
INSERT INTO CATEGORIAS(CATEGORIA,ID_CATEGORIA)
VALUES ('REFRESCOS','6');
INSERT INTO CATEGORIAS(CATEGORIA,ID_CATEGORIA)
VALUES ('CERVEZAS','7');
INSERT INTO CATEGORIAS(CATEGORIA,ID_CATEGORIA)
VALUES ('PLATOS PREPARADOS','8');
INSERT INTO CATEGORIAS(CATEGORIA,ID_CATEGORIA)
VALUES ('ENLATADOS','9');


CREATE TABLE PRODUCTOS (
NOMBRE_PRODUCTO VARCHAR2 (50),
PRECIO FLOAT NOT NULL,
CANTIDAD INT NOT NULL,
ID_CATEGORIA INT NOT NULL,
ID_PROVEEDOR INT NOT NULL,
ID_PRODUCTO INT NOT NULL PRIMARY KEY,
CONSTRAINT FK_CATEGORIA FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIAS (ID_CATEGORIA),
CONSTRAINT FK_PROVEEDOR FOREIGN KEY (ID_PROVEEDOR) REFERENCES PROVEEDORES (ID_PROVEEDOR));

INSERT INTO PRODUCTOS(NOMBRE_PRODUCTO,PRECIO,CANTIDAD,ID_CATEGORIA,ID_PROVEEDOR,ID_PRODUCTO)
VALUES ('COCA COLA','1000','30','6','26','1');
INSERT INTO PRODUCTOS(NOMBRE_PRODUCTO,PRECIO,CANTIDAD,ID_CATEGORIA,ID_PROVEEDOR,ID_PRODUCTO)
VALUES ('ATUN SARDIMAR','1500','40','9','29','2');
INSERT INTO PRODUCTOS(NOMBRE_PRODUCTO,PRECIO,CANTIDAD,ID_CATEGORIA,ID_PROVEEDOR,ID_PRODUCTO)
VALUES ('YOGURT FRESA','400','90','5','25','3');
INSERT INTO PRODUCTOS(NOMBRE_PRODUCTO,PRECIO,CANTIDAD,ID_CATEGORIA,ID_PROVEEDOR,ID_PRODUCTO)
VALUES ('MANZANA','600','36','1','21','4');
INSERT INTO PRODUCTOS(NOMBRE_PRODUCTO,PRECIO,CANTIDAD,ID_CATEGORIA,ID_PROVEEDOR,ID_PRODUCTO)
VALUES ('PIZZA CONGELADA','6500','23','8','28','5');
INSERT INTO PRODUCTOS(NOMBRE_PRODUCTO,PRECIO,CANTIDAD,ID_CATEGORIA,ID_PROVEEDOR,ID_PRODUCTO)
VALUES ('IMPERIAL','1200','100','7','27','6');
INSERT INTO PRODUCTOS(NOMBRE_PRODUCTO,PRECIO,CANTIDAD,ID_CATEGORIA,ID_PROVEEDOR,ID_PRODUCTO)
VALUES ('BISTEK','1200','46','4','24','7');
INSERT INTO PRODUCTOS(NOMBRE_PRODUCTO,PRECIO,CANTIDAD,ID_CATEGORIA,ID_PROVEEDOR,ID_PRODUCTO)
VALUES ('CHAYOTE','800','32','2','22','8');
INSERT INTO PRODUCTOS(NOMBRE_PRODUCTO,PRECIO,CANTIDAD,ID_CATEGORIA,ID_PROVEEDOR,ID_PRODUCTO)
VALUES ('CEREAL DE TRIJUELAS','2400','29','3','23','9');


CREATE TABLE FACTURACION(
FECHA_FACTURACION DATE NOT NULL,
TOTAL FLOAT NOT NULL,
CANTIDAD_ORDENADA INT NOT NULL,
ID_PRODUCTO INT NOT NULL,
ID_CLIENTE VARCHAR2 (20),
NOMBRE_PRODUCTO VARCHAR2(50),
ID_FACTURA INT NOT NULL,
PRIMARY KEY (ID_FACTURA),
CONSTRAINT FK_PRODUCTO FOREIGN KEY (ID_PRODUCTO) REFERENCES PRODUCTOS (ID_PRODUCTO),
CONSTRAINT FK_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (CEDULA_CLIENTE));

INSERT INTO FACTURACION (FECHA_FACTURACION,TOTAL,CANTIDAD_ORDENADA,ID_PRODUCTO,ID_CLIENTE,NOMBRE_PRODUCTO,ID_FACTURA)
VALUES('12/03/2023','40000','40','1','2-4213-8749','COCA COLA', '01');
INSERT INTO FACTURACION (FECHA_FACTURACION,TOTAL,CANTIDAD_ORDENADA,ID_PRODUCTO,ID_CLIENTE,NOMBRE_PRODUCTO,ID_FACTURA)
VALUES('14/05/2023','6000','4','2','5-1253-3641','ATUN SARDIMAR', '02');
INSERT INTO FACTURACION (FECHA_FACTURACION,TOTAL,CANTIDAD_ORDENADA,ID_PRODUCTO,ID_CLIENTE,NOMBRE_PRODUCTO,ID_FACTURA)
VALUES('24/01/2023','10000','25','3','6-6527-1900','YOGURT FRESA', '03');
INSERT INTO FACTURACION (FECHA_FACTURACION,TOTAL,CANTIDAD_ORDENADA,ID_PRODUCTO,ID_CLIENTE,NOMBRE_PRODUCTO,ID_FACTURA)
VALUES('01/06/2023','1200','2','4','3-2293-6159','MANZANA', '04');
INSERT INTO FACTURACION (FECHA_FACTURACION,TOTAL,CANTIDAD_ORDENADA,ID_PRODUCTO,ID_CLIENTE,NOMBRE_PRODUCTO,ID_FACTURA)
VALUES('30/03/2023','13000','2','5','8-0982-1564','PIZZA CONGELADA', '05');
INSERT INTO FACTURACION (FECHA_FACTURACION,TOTAL,CANTIDAD_ORDENADA,ID_PRODUCTO,ID_CLIENTE,NOMBRE_PRODUCTO,ID_FACTURA)
VALUES('21/04/2023','36000','30','6','4-0731-4791','IMPERIAL', '06');


CREATE TABLE EMPLEADOS(
NOMBRE_EMPLEADO VARCHAR(20),
PRIMER_APELLIDO_EMPLEADO VARCHAR2(20),
SEGUNDO_APELLIDO_EMPLEADO VARCHAR2(20),
FECHA_CONTRATACION DATE NOT NULL,
CORREO_EMPLEADO VARCHAR2(50),
ID_EMPLEADO INT NOT NULL,
ID_POSICION INT NOT NULL,
PRIMARY KEY (ID_EMPLEADO),
CONSTRAINT FK_ID_POSICION FOREIGN KEY (ID_POSICION) REFERENCES POSICION (ID_POSICION));


INSERT INTO EMPLEADOS (NOMBRE_EMPLEADO,PRIMER_APELLIDO_EMPLEADO,SEGUNDO_APELLIDO_EMPLEADO,FECHA_CONTRATACION, CORREO_EMPLEADO, ID_EMPLEADO,ID_POSICION)
VALUES ('MARIO','CHAVEZ','MONGE','12/12/2022','MARIOCHAVES@GMAIL.COM','01','01');
INSERT INTO EMPLEADOS (NOMBRE_EMPLEADO,PRIMER_APELLIDO_EMPLEADO,SEGUNDO_APELLIDO_EMPLEADO,FECHA_CONTRATACION, CORREO_EMPLEADO, ID_EMPLEADO,ID_POSICION)
VALUES ('JUAN','VIQUEZ','CHAVARRIA','04/02/2023','JUANVIQUEZ@HOTMAIL.COM','02','02');
INSERT INTO EMPLEADOS (NOMBRE_EMPLEADO,PRIMER_APELLIDO_EMPLEADO,SEGUNDO_APELLIDO_EMPLEADO,FECHA_CONTRATACION, CORREO_EMPLEADO, ID_EMPLEADO,ID_POSICION)
VALUES ('PATRICIA','HERNANDEZ','ARIAS','01/07/2021','PATRICIAHERNANDEZ@YAHOO.COM','03','03');
INSERT INTO EMPLEADOS (NOMBRE_EMPLEADO,PRIMER_APELLIDO_EMPLEADO,SEGUNDO_APELLIDO_EMPLEADO,FECHA_CONTRATACION, CORREO_EMPLEADO, ID_EMPLEADO,ID_POSICION)
VALUES ('KARLA','FONSECA','VARGAS','11/05/2023','KARLAFONSECA@GMAIL.COM','04','04');


CREATE TABLE POSICION(
POSICION VARCHAR2(40),
ID_POSICION INT NOT NULL,
PRIMARY KEY (ID_POSICION));

INSERT INTO POSICION(POSICION,ID_POSICION)
VALUES('GERENTE','01');
INSERT INTO POSICION(POSICION,ID_POSICION)
VALUES('CAJERO','02');
INSERT INTO POSICION(POSICION,ID_POSICION)
VALUES('ALMACEN','03');
INSERT INTO POSICION(POSICION,ID_POSICION)
VALUES('REPONEDOR','04');
INSERT INTO POSICION(POSICION,ID_POSICION)
VALUES('LIMPIEZA','05');
INSERT INTO POSICION(POSICION,ID_POSICION)
VALUES('RESPONSABLE DE SECCION','06');
INSERT INTO POSICION(POSICION,ID_POSICION)
VALUES('GUARDA','07');


SELECT cols.table_name, cols.column_name, cols.position, cons.status, cons.owner
FROM all_constraints cons, all_cons_columns cols
WHERE cols.table_name = 'EMPLEADOS'
AND cons.constraint_type = 'P'
AND cons.constraint_name = cols.constraint_name
AND cons.owner = cols.owner
ORDER BY cols.table_name, cols.position;


SELECT * FROM EMPLEADOS;
---------------------------------------------------------------------------------
------------------------------SP CRUD------------------------------

-------------------TABLA PROVEEDORES-------------------

------Procedimiento Almacenado para Insertar un Proveedor:------

CREATE OR REPLACE PROCEDURE InsertarProveedor(
    p_nombre_proveedor IN PROVEEDORES.NOMBRE_PROVEEDOR%TYPE,
    p_fecha_contrato IN PROVEEDORES.FECHA_CONTRATO%TYPE,
    p_correo_proveedor IN PROVEEDORES.CORREO_PROVEEDOR%TYPE,
    p_telefono_proveedor IN PROVEEDORES.TELEFONO_PROVEEDOR%TYPE,
    p_id_proveedor IN PROVEEDORES.ID_PROVEEDOR%TYPE
)
AS
BEGIN
    INSERT INTO PROVEEDORES(NOMBRE_PROVEEDOR, FECHA_CONTRATO, CORREO_PROVEEDOR, TELEFONO_PROVEEDOR, ID_PROVEEDOR)
    VALUES(p_nombre_proveedor, p_fecha_contrato, p_correo_proveedor, p_telefono_proveedor, p_id_proveedor);
    COMMIT;
END;

------Procedimiento Almacenado para Actualizar un Proveedor:------

CREATE OR REPLACE PROCEDURE ActualizarProveedor(
    p_id_proveedor IN PROVEEDORES.ID_PROVEEDOR%TYPE,
    p_nuevo_nombre_proveedor IN PROVEEDORES.NOMBRE_PROVEEDOR%TYPE,
    p_nueva_fecha_contrato IN PROVEEDORES.FECHA_CONTRATO%TYPE,
    p_nuevo_correo_proveedor IN PROVEEDORES.CORREO_PROVEEDOR%TYPE,
    p_nuevo_telefono_proveedor IN PROVEEDORES.TELEFONO_PROVEEDOR%TYPE
)
AS
BEGIN
    UPDATE PROVEEDORES
    SET NOMBRE_PROVEEDOR = p_nuevo_nombre_proveedor,
        FECHA_CONTRATO = p_nueva_fecha_contrato,
        CORREO_PROVEEDOR = p_nuevo_correo_proveedor,
        TELEFONO_PROVEEDOR = p_nuevo_telefono_proveedor
    WHERE ID_PROVEEDOR = p_id_proveedor;
    COMMIT;
END;

------Procedimiento Almacenado para Eliminar un Empleado:------

CREATE OR REPLACE PROCEDURE EliminarProveedor(p_id_proveedor IN PROVEEDORES.ID_PROVEEDOR%TYPE)
AS
BEGIN
    DELETE FROM PROVEEDORES
    WHERE ID_PROVEEDOR = p_id_proveedor;
    COMMIT;
END;
------Función para Obtener Información de un Proveedor:------

CREATE OR REPLACE FUNCTION ObtenerProveedor(p_id_proveedor IN PROVEEDORES.ID_PROVEEDOR%TYPE)
RETURN SYS_REFCURSOR
AS
    v_proveedor SYS_REFCURSOR;
BEGIN
    OPEN v_proveedor FOR SELECT *
    FROM PROVEEDORES
    WHERE ID_PROVEEDOR = p_id_proveedor;
    RETURN v_proveedor;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerProveedor(refCur out SYS_REFCURSOR,idProveedor in PROVEEDORES.ID_PROVEEDOR%TYPE) AS
BEGIN
refCur := ObtenerProveedor(idProveedor);
END llamadaObtenerProveedor;




------Cursor para Obtener Todos los Proveedores:------

CREATE OR REPLACE FUNCTION ObtenerTodosProveedores
RETURN SYS_REFCURSOR
AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
    SELECT *
    FROM PROVEEDORES;
    RETURN v_cursor;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerTodosProveedores(refCur out SYS_REFCURSOR) AS
BEGIN
refCur := ObtenerTodosProveedores;
END llamadaObtenerTodosProveedores;


-------------------TABLA CLIENTES-------------------

------Procedimiento Almacenado para Insertar un Cliente:.------

CREATE OR REPLACE PROCEDURE InsertarCliente(
    p_nombre_cliente IN CLIENTES.NOMBRE_CLIENTE%TYPE,
    p_primer_apellido_cliente IN CLIENTES.PRIMER_APELLIDO_CLIENTE%TYPE,
    p_segundo_apellido_cliente IN CLIENTES.SEGUNDO_APELLIDO_CLIENTE%TYPE,
    p_correo_cliente IN CLIENTES.CORREO_CLIENTE%TYPE,
    p_telefono_cliente IN CLIENTES.TELEFONO_CLIENTE%TYPE,
    p_cedula_cliente IN CLIENTES.CEDULA_CLIENTE%TYPE
)
AS
BEGIN
    INSERT INTO CLIENTES(NOMBRE_CLIENTE, PRIMER_APELLIDO_CLIENTE, SEGUNDO_APELLIDO_CLIENTE, CORREO_CLIENTE, TELEFONO_CLIENTE, CEDULA_CLIENTE)
    VALUES(p_nombre_cliente, p_primer_apellido_cliente, p_segundo_apellido_cliente, p_correo_cliente, p_telefono_cliente, p_cedula_cliente);
    COMMIT;
END;



------Procedimiento Almacenado para Actualizar un Cliente:------


CREATE OR REPLACE PROCEDURE ActualizarCliente(
    p_cedula_cliente IN CLIENTES.CEDULA_CLIENTE%TYPE,
    p_nuevo_nombre_cliente IN CLIENTES.NOMBRE_CLIENTE%TYPE,
    p_nuevo_primer_apellido_cliente IN CLIENTES.PRIMER_APELLIDO_CLIENTE%TYPE,
    p_nuevo_segundo_apellido_cliente IN CLIENTES.SEGUNDO_APELLIDO_CLIENTE%TYPE,
    p_nuevo_correo_cliente IN CLIENTES.CORREO_CLIENTE%TYPE,
    p_nuevo_telefono_cliente IN CLIENTES.TELEFONO_CLIENTE%TYPE
)
AS
BEGIN
    UPDATE CLIENTES
    SET NOMBRE_CLIENTE = p_nuevo_nombre_cliente,
        PRIMER_APELLIDO_CLIENTE = p_nuevo_primer_apellido_cliente,
        SEGUNDO_APELLIDO_CLIENTE = p_nuevo_segundo_apellido_cliente,
        CORREO_CLIENTE = p_nuevo_correo_cliente,
        TELEFONO_CLIENTE = p_nuevo_telefono_cliente
    WHERE CEDULA_CLIENTE = p_cedula_cliente;
    COMMIT;
END;


------Procedimiento Almacenado para Eliminar un Cliente:------


CREATE OR REPLACE PROCEDURE EliminarCliente(p_cedula_cliente IN CLIENTES.CEDULA_CLIENTE%TYPE)
AS
BEGIN
    DELETE FROM CLIENTES
    WHERE CEDULA_CLIENTE = p_cedula_cliente;
    COMMIT;
END;

------Función para Obtener Información de un Cliente:------

CREATE OR REPLACE FUNCTION ObtenerCliente(p_cedula_cliente IN CLIENTES.CEDULA_CLIENTE%TYPE)
RETURN SYS_REFCURSOR
AS
    v_cliente SYS_REFCURSOR;
BEGIN
    OPEN v_cliente FOR SELECT *
    FROM CLIENTES
    WHERE CEDULA_CLIENTE = p_cedula_cliente;

    RETURN v_cliente;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerCliente(refCur out SYS_REFCURSOR,idCliente in CLIENTES.CEDULA_CLIENTE%TYPE) AS
BEGIN
refCur := ObtenerCliente(idCliente);
END llamadaObtenerCliente;



------Cursor para Obtener Todos los Clientes:------


CREATE OR REPLACE FUNCTION ObtenerTodosClientes
RETURN SYS_REFCURSOR
AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
    SELECT *
    FROM CLIENTES;

    RETURN v_cursor;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerTodosClientes(refCur out SYS_REFCURSOR) AS
BEGIN
refCur := ObtenerTodosClientes;
END llamadaObtenerTodosClientes;


-------------------TABLA CATEGORIAS-------------------

------Procedimiento Almacenado para Insertar una Categoría:------


CREATE OR REPLACE PROCEDURE InsertarCategoria(
    p_categoria IN CATEGORIAS.CATEGORIA%TYPE,
    p_id_categoria IN CATEGORIAS.ID_CATEGORIA%TYPE
)
AS
BEGIN
    INSERT INTO CATEGORIAS(CATEGORIA, ID_CATEGORIA)
    VALUES(p_categoria, p_id_categoria);
    COMMIT;
END;


------Procedimiento Almacenado para Actualizar una Categoría:------


CREATE OR REPLACE PROCEDURE ActualizarCategoria(
    p_id_categoria IN CATEGORIAS.ID_CATEGORIA%TYPE,
    p_nueva_categoria IN CATEGORIAS.CATEGORIA%TYPE
)
AS
BEGIN
    UPDATE CATEGORIAS
    SET CATEGORIA = p_nueva_categoria
    WHERE ID_CATEGORIA = p_id_categoria;
    COMMIT;
END;



------Procedimiento Almacenado para Eliminar una Categoría------


CREATE OR REPLACE PROCEDURE EliminarCategoria(p_id_categoria IN CATEGORIAS.ID_CATEGORIA%TYPE)
AS
BEGIN
    DELETE FROM CATEGORIAS
    WHERE ID_CATEGORIA = p_id_categoria;
    COMMIT;
END;


------Función para Obtener Información de una Categoría:------


CREATE OR REPLACE FUNCTION ObtenerCategoria(p_id_categoria IN CATEGORIAS.ID_CATEGORIA%TYPE)
RETURN SYS_REFCURSOR
AS
    v_categoria SYS_REFCURSOR;
BEGIN
    OPEN v_categoria FOR SELECT *
    FROM CATEGORIAS
    WHERE ID_CATEGORIA = p_id_categoria;
    
    RETURN v_categoria;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerCategoria(refCur out SYS_REFCURSOR,idCategoria in CATEGORIAS.ID_CATEGORIA%TYPE) AS
BEGIN
refCur := ObtenerCategoria(idCategoria);
END llamadaObtenerCategoria;



------Cursor para Obtener Todas las Categorías:------


CREATE OR REPLACE FUNCTION ObtenerTodasCategorias
RETURN SYS_REFCURSOR
AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
    SELECT *
    FROM CATEGORIAS;

    RETURN v_cursor;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerTodasCategorias(refCur out SYS_REFCURSOR) AS
BEGIN
refCur := ObtenerTodasCategorias;
END llamadaObtenerTodasCategorias;


-------------------TABLA PRODUCTOS-------------------

------Procedimiento Almacenado para Insertar un Producto:------

CREATE OR REPLACE PROCEDURE InsertarProducto(
    p_nombre_producto IN PRODUCTOS.NOMBRE_PRODUCTO%TYPE,
    p_precio IN PRODUCTOS.PRECIO%TYPE,
    p_cantidad IN PRODUCTOS.CANTIDAD%TYPE,
    p_id_categoria IN PRODUCTOS.ID_CATEGORIA%TYPE,
    p_id_proveedor IN PRODUCTOS.ID_PROVEEDOR%TYPE,
    p_id_producto IN PRODUCTOS.ID_PRODUCTO%TYPE
)
AS
BEGIN
    INSERT INTO PRODUCTOS(NOMBRE_PRODUCTO, PRECIO, CANTIDAD, ID_CATEGORIA, ID_PROVEEDOR, ID_PRODUCTO)
    VALUES(p_nombre_producto, p_precio, p_cantidad, p_id_categoria, p_id_proveedor, p_id_producto);
    COMMIT;
END;


------Procedimiento Almacenado para Actualizar un Producto:------


CREATE OR REPLACE PROCEDURE ActualizarProducto(
    p_id_producto IN PRODUCTOS.ID_PRODUCTO%TYPE,
    p_nuevo_nombre_producto IN PRODUCTOS.NOMBRE_PRODUCTO%TYPE,
    p_nuevo_precio IN PRODUCTOS.PRECIO%TYPE,
    p_nueva_cantidad IN PRODUCTOS.CANTIDAD%TYPE,
    p_nuevo_id_categoria IN PRODUCTOS.ID_CATEGORIA%TYPE,
    p_nuevo_id_proveedor IN PRODUCTOS.ID_PROVEEDOR%TYPE
)
AS
BEGIN
    UPDATE PRODUCTOS
    SET NOMBRE_PRODUCTO = p_nuevo_nombre_producto,
        PRECIO = p_nuevo_precio,
        CANTIDAD = p_nueva_cantidad,
        ID_CATEGORIA = p_nuevo_id_categoria,
        ID_PROVEEDOR = p_nuevo_id_proveedor
    WHERE ID_PRODUCTO = p_id_producto;
    COMMIT;
END;


------Procedimiento Almacenado para Eliminar un Producto:------


CREATE OR REPLACE PROCEDURE EliminarProducto(p_id_producto IN PRODUCTOS.ID_PRODUCTO%TYPE)
AS
BEGIN
    DELETE FROM PRODUCTOS
    WHERE ID_PRODUCTO = p_id_producto;
    COMMIT;
END;



------Función para Obtener Información de un Producto:------


CREATE OR REPLACE FUNCTION ObtenerProducto(p_id_producto IN PRODUCTOS.ID_PRODUCTO%TYPE)
RETURN SYS_REFCURSOR
AS
    v_producto SYS_REFCURSOR;
BEGIN
    OPEN v_producto FOR SELECT *
    FROM PRODUCTOS
    WHERE ID_PRODUCTO = p_id_producto;

    RETURN v_producto;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerProducto(refCur out SYS_REFCURSOR,idProducto in PRODUCTOS.ID_PRODUCTO%TYPE) AS
BEGIN
refCur := ObtenerProducto(idProducto);
END llamadaObtenerProducto;


------Cursor para Obtener Todos los Productos:------


CREATE OR REPLACE FUNCTION ObtenerTodosProductos
RETURN SYS_REFCURSOR
AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
    SELECT *
    FROM PRODUCTOS;

    RETURN v_cursor;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerTodosProductos(refCur out SYS_REFCURSOR) AS
BEGIN
refCur := ObtenerTodosProductos;
END llamadaObtenerTodosProductos;

-------------------TABLA EMPLEADOS-------------------



------Procedimiento Almacenado para Insertar un Empleado:------


CREATE OR REPLACE PROCEDURE InsertarEmpleado(
    p_nombre_empleado IN EMPLEADOS.NOMBRE_EMPLEADO%TYPE,
    p_primer_apellido_empleado IN EMPLEADOS.PRIMER_APELLIDO_EMPLEADO%TYPE,
    p_segundo_apellido_empleado IN EMPLEADOS.SEGUNDO_APELLIDO_EMPLEADO%TYPE,
    p_fecha_contratacion IN EMPLEADOS.FECHA_CONTRATACION%TYPE,
    p_correo_empleado IN EMPLEADOS.CORREO_EMPLEADO%TYPE,
    p_id_empleado IN EMPLEADOS.ID_EMPLEADO%TYPE,
    p_id_posicion IN EMPLEADOS.ID_POSICION%TYPE
)
AS
BEGIN
    INSERT INTO EMPLEADOS(NOMBRE_EMPLEADO, PRIMER_APELLIDO_EMPLEADO, SEGUNDO_APELLIDO_EMPLEADO, FECHA_CONTRATACION, CORREO_EMPLEADO, ID_EMPLEADO, ID_POSICION)
    VALUES(p_nombre_empleado, p_primer_apellido_empleado, p_segundo_apellido_empleado, p_fecha_contratacion, p_correo_empleado, p_id_empleado, p_id_posicion);
    COMMIT;
END;


------Procedimiento Almacenado para Actualizar un Empleado:------


CREATE OR REPLACE PROCEDURE ActualizarEmpleado(
    p_id_empleado IN EMPLEADOS.ID_EMPLEADO%TYPE,
    p_nuevo_nombre_empleado IN EMPLEADOS.NOMBRE_EMPLEADO%TYPE,
    p_nuevo_primer_apellido_empleado IN EMPLEADOS.PRIMER_APELLIDO_EMPLEADO%TYPE,
    p_nuevo_segundo_apellido_empleado IN EMPLEADOS.SEGUNDO_APELLIDO_EMPLEADO%TYPE,
    p_nueva_fecha_contratacion IN EMPLEADOS.FECHA_CONTRATACION%TYPE,
    p_nuevo_correo_empleado IN EMPLEADOS.CORREO_EMPLEADO%TYPE,
    p_nuevo_id_posicion IN EMPLEADOS.ID_POSICION%TYPE
)
AS
BEGIN
    UPDATE EMPLEADOS
    SET NOMBRE_EMPLEADO = p_nuevo_nombre_empleado,
        PRIMER_APELLIDO_EMPLEADO = p_nuevo_primer_apellido_empleado,
        SEGUNDO_APELLIDO_EMPLEADO = p_nuevo_segundo_apellido_empleado,
        FECHA_CONTRATACION = p_nueva_fecha_contratacion,
        CORREO_EMPLEADO = p_nuevo_correo_empleado,
        ID_POSICION = p_nuevo_id_posicion
    WHERE ID_EMPLEADO = p_id_empleado;
    COMMIT;
END;



------Procedimiento Almacenado para Eliminar un Empleado:------


CREATE OR REPLACE PROCEDURE EliminarEmpleado(p_id_empleado IN EMPLEADOS.ID_EMPLEADO%TYPE)
AS
BEGIN
    DELETE FROM EMPLEADOS
    WHERE ID_EMPLEADO = p_id_empleado;
    COMMIT;
END;


------Función para Obtener Información de un Empleado:------

CREATE OR REPLACE FUNCTION ObtenerEmpleado(p_id_empleado IN EMPLEADOS.ID_EMPLEADO%TYPE)
RETURN SYS_REFCURSOR
AS
    v_empleado SYS_REFCURSOR;
BEGIN
    OPEN v_empleado FOR SELECT *
    FROM EMPLEADOS
    WHERE ID_EMPLEADO = p_id_empleado;

    RETURN v_empleado;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerEmpleado(refCur out SYS_REFCURSOR,idEmpleado in EMPLEADOS.ID_EMPLEADO%TYPE) AS
BEGIN
refCur := ObtenerEmpleado(idEmpleado);
END llamadaObtenerEmpleado;

------Cursor para Obtener Todos los Empleados:------


CREATE OR REPLACE FUNCTION ObtenerTodosEmpleados
RETURN SYS_REFCURSOR
AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
    SELECT *
    FROM EMPLEADOS;

    RETURN v_cursor;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerTodosEmpleados(refCur out SYS_REFCURSOR) AS
BEGIN
refCur := ObtenerTodosEmpleados;
END llamadaObtenerTodosEmpleados;

begin
llamadaObtenerTodosEmpleados();
end;


-------------------TABLA POSICION-------------------



------Procedimiento Almacenado para Insertar una Posición:------


CREATE OR REPLACE PROCEDURE InsertarPosicion(
    p_posicion IN POSICION.POSICION%TYPE,
    p_id_posicion IN POSICION.ID_POSICION%TYPE
)
AS
BEGIN
    INSERT INTO POSICION(POSICION, ID_POSICION)
    VALUES(p_posicion, p_id_posicion);
    COMMIT;
END;


------Procedimiento Almacenado para Actualizar una Posición:------


CREATE OR REPLACE PROCEDURE ActualizarPosicion(
    p_id_posicion IN POSICION.ID_POSICION%TYPE,
    p_nueva_posicion IN POSICION.POSICION%TYPE
)
AS
BEGIN
    UPDATE POSICION
    SET POSICION = p_nueva_posicion
    WHERE ID_POSICION = p_id_posicion;
    COMMIT;
END;


------Procedimiento Almacenado para Eliminar una Posición:------


CREATE OR REPLACE PROCEDURE EliminarPosicion(p_id_posicion IN POSICION.ID_POSICION%TYPE)
AS
BEGIN
    DELETE FROM POSICION
    WHERE ID_POSICION = p_id_posicion;
    COMMIT;
END;


------Función para Obtener Información de una Posición:------


CREATE OR REPLACE FUNCTION ObtenerPosicion(p_id_posicion IN POSICION.ID_POSICION%TYPE)
RETURN SYS_REFCURSOR
AS
    v_posicion SYS_REFCURSOR;
BEGIN
    OPEN v_posicion FOR SELECT *
    FROM POSICION
    WHERE ID_POSICION = p_id_posicion;
    RETURN v_posicion;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerPosicion(refCur out SYS_REFCURSOR,idPosicion in POSICION.ID_POSICION%TYPE) AS
BEGIN
refCur := ObtenerPosicion(idPosicion);
END llamadaObtenerPosicion;


------Cursor para Obtener Todas las Posiciones:------


CREATE OR REPLACE FUNCTION ObtenerTodasPosiciones
RETURN SYS_REFCURSOR
AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
    SELECT *
    FROM POSICION;

    RETURN v_cursor;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerTodasPosiciones(refCur out SYS_REFCURSOR) AS
BEGIN
refCur := ObtenerTodasPosiciones;
END llamadaObtenerTodasPosiciones;

-------------------TABLA FACTURACI N-------------------

------Procedimiento Almacenado para Insertar una factura:------


CREATE OR REPLACE PROCEDURE InsertarFactura(
    p_fecha_facturacion IN FACTURACION.FECHA_FACTURACION%TYPE,
    p_total IN FACTURACION.TOTAL%TYPE,
    p_cantidad_ordenada IN FACTURACION.CANTIDAD_ORDENADA%TYPE,
    p_id_producto IN FACTURACION.ID_PRODUCTO%TYPE,
    p_id_cliente IN FACTURACION.ID_CLIENTE%TYPE,
    p_nombre_producto IN FACTURACION.NOMBRE_PRODUCTO%TYPE,
    p_id_factura IN FACTURACION.ID_FACTURA%TYPE
)
AS
BEGIN
    INSERT INTO FACTURACION(FECHA_FACTURACION, TOTAL, CANTIDAD_ORDENADA, ID_PRODUCTO, ID_CLIENTE, NOMBRE_PRODUCTO, ID_FACTURA)
    VALUES(p_fecha_facturacion, p_total, p_cantidad_ordenada, p_id_producto, p_id_cliente, p_nombre_producto, p_id_factura);
    COMMIT;
END;

------Procedimiento Almacenado para Actualizar un Empleado:------


CREATE OR REPLACE PROCEDURE ActualizarFactura(
    p_id_factura IN FACTURACION.ID_FACTURA%TYPE,
    p_fecha_facturacion IN FACTURACION.FECHA_FACTURACION%TYPE,
    p_total IN FACTURACION.TOTAL%TYPE,
    p_cantidad_ordenada IN FACTURACION.CANTIDAD_ORDENADA%TYPE,
    p_id_producto IN FACTURACION.ID_PRODUCTO%TYPE,
    p_id_cliente IN FACTURACION.ID_CLIENTE%TYPE,
    p_nombre_producto IN FACTURACION.NOMBRE_PRODUCTO%TYPE
)
AS
BEGIN
    UPDATE FACTURACION
    SET FECHA_FACTURACION = p_fecha_facturacion,
        TOTAL = p_total,
        CANTIDAD_ORDENADA = p_cantidad_ordenada,
        ID_PRODUCTO = p_id_producto,
        ID_CLIENTE = p_id_cliente,
        NOMBRE_PRODUCTO = p_nombre_producto
    WHERE ID_FACTURA = p_id_factura;
    COMMIT;
END;

------Procedimiento Almacenado para Eliminar una factura:------


CREATE OR REPLACE PROCEDURE EliminarFactura(p_id_factura IN FACTURACION.ID_FACTURA%TYPE)
AS
BEGIN
    DELETE FROM FACTURACION
    WHERE ID_FACTURA = p_id_factura;
    COMMIT;
END;

------Función para Obtener Información de una factura:------

CREATE OR REPLACE FUNCTION ObtenerFactura(p_id_factura IN FACTURACION.ID_FACTURA%TYPE)
RETURN SYS_REFCURSOR
AS
    v_factura SYS_REFCURSOR;
BEGIN
    OPEN v_factura FOR SELECT *
    FROM FACTURACION
    WHERE ID_FACTURA = p_id_factura;

    RETURN v_factura;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerFactura(refCur out SYS_REFCURSOR,idFactura in FACTURACION.ID_FACTURA%TYPE) AS
BEGIN
refCur := ObtenerFactura(idFactura);
END llamadaObtenerFactura;

------Cursor para Obtener Todos los Empleados:------


CREATE OR REPLACE FUNCTION ObtenerTodasFacturas
RETURN SYS_REFCURSOR
AS
    v_factura SYS_REFCURSOR;
BEGIN
    OPEN v_factura FOR
    SELECT *
    FROM FACTURACION;

    RETURN v_factura;
END;

CREATE OR REPLACE PROCEDURE llamadaObtenerTodasFacturas(refCur out SYS_REFCURSOR) AS
BEGIN
refCur := ObtenerTodasFacturas;
END llamadaObtenerTodasFacturas;


--Vistas

CREATE VIEW V_CONTRATACIONEMPLEADO AS
SELECT NOMBRE_EMPLEADO||' '||PRIMER_APELLIDO_EMPLEADO||' '|| SEGUNDO_APELLIDO_EMPLEADO AS "NOMBRE COMPLETO" , FECHA_CONTRATACION FROM EMPLEADOS
WHERE FECHA_CONTRATACION BETWEEN '01/01/2020' AND '01/01/2024' 
ORDER BY FECHA_CONTRATACION;

SELECT * FROM V_CONTRATACIONEMPLEADO;


CREATE VIEW V_PRODUCTOFACTURADO AS
SELECT NOMBRE_PRODUCTO AS "PRODUCTO FACTURADO", 
CANTIDAD_ORDENADA AS "CANTIDAD FACTURADA" FROM FACTURACION WHERE 
ID_FACTURA= 01;

SELECT * FROM V_PRODUCTOFACTURADO;

CREATE VIEW V_VERLLAVEPRIMARIA AS
SELECT cols.table_name, cols.column_name, cols.position, cons.status, cons.owner
FROM all_constraints cons, all_cons_columns cols
WHERE cols.table_name = 'EMPLEADOS'
AND cons.constraint_type = 'P'
AND cons.constraint_name = cols.constraint_name
AND cons.owner = cols.owner
ORDER BY cols.table_name, cols.position;

SELECT * FROM V_VERLLAVEPRIMARIA;

CREATE VIEW V_A OSXEMPLEADO AS 
SELECT ID_EMPLEADO,NOMBRE_EMPLEADO||PRIMER_APELLIDO_EMPLEADO NOMBRE_COMPLETO,FLOOR
(MONTHS_BETWEEN (CURRENT_DATE,FECHA_CONTRATACION) /12) "A OS" FROM EMPLEADOS ORDER BY FECHA_CONTRATACION;

SELECT * FROM V_A OSXEMPLEADO;

CREATE VIEW V_MESESXEMPLEADO AS 
SELECT ID_EMPLEADO,NOMBRE_EMPLEADO||PRIMER_APELLIDO_EMPLEADO NOMBRE_COMPLETO,FLOOR
(MONTHS_BETWEEN (CURRENT_DATE,FECHA_CONTRATACION) /1) "MESES" FROM EMPLEADOS ORDER BY FECHA_CONTRATACION;

SELECT * FROM V_MESESXEMPLEADO;


---triggers

create table auditoria(
usuario varchar(50),
accion varchar(50),
fecha date
);




create or replace trigger nuevo_cliente
after insert on CLIENTES
for each row
declare
vcliente varchar2(50);
vfecha date;
begin
select user,sysdate into vcliente,vfecha from dual;
insert into auditoria (accion,usuario,fecha)
values ('El nuevo cliente es ' || :new.NOMBRE_CLIENTE,vcliente,vfecha);
end;
INSERT INTO CLIENTES(NOMBRE_CLIENTE,PRIMER_APELLIDO_CLIENTE,SEGUNDO_APELLIDO_CLIENTE,CORREO_CLIENTE,TELEFONO_CLIENTE,CEDULA_CLIENTE)
VALUES ('ALFONSO','ROMERO','CALDERON','ALFONSOROMERO@HOTMAIL.COM','2309-1149','2-1935-1181');



create or replace trigger borrar_cliente
after delete on CLIENTES
for each row 
declare
vcliente varchar2(50);
vfecha date;
begin 
select user, sysdate into vcliente,vfecha from dual;
insert into auditoria (accion,usuario,fecha)
values ('El cliente borrado es' || :old.NOMBRE_CLIENTE,vcliente,vfecha);
end;

delete from CLIENTES where CORREO_CLIENTE ='ROBERTOALFA@GMAIL.COM';

create or replace trigger cliente_actualizado
after update on CLIENTES
for each row
declare
vcliente varchar2(50);
vfecha date;
begin
select user,sysdate into vcliente,vfecha from dual;
insert into auditoria (accion,usuario,fecha)
values ('El cliente actualizado es ' || :new.NOMBRE_CLIENTE,vcliente,vfecha);
end;

Update CLIENTES SET NOMBRE_CLIENTE= 'ANTHONY' WHERE CEDULA_CLIENTE = '8-0982-1564';

create or replace trigger nuevo_empleado
after insert on EMPLEADOS
for each row
declare
vEmpleado varchar2(50);
vfecha date;
begin
select user,sysdate into vEmpleado,vfecha from dual;
insert into auditoria (accion,usuario,fecha)
values ('El nuevo empleado es ' || :new.NOMBRE_EMPLEADO,vEmpleado,vfecha);
end;

INSERT INTO EMPLEADOS (NOMBRE_EMPLEADO,PRIMER_APELLIDO_EMPLEADO,SEGUNDO_APELLIDO_EMPLEADO,FECHA_CONTRATACION, CORREO_EMPLEADO, ID_EMPLEADO,ID_POSICION)
VALUES ('HEIDY','QUIROS','ALPIZAR','11/10/2021','HEIDYQUIROS@GMAIL.COM','05','07');

------------------------Paquetes------------------------

CREATE OR REPLACE PACKAGE clientes_package AS 
   -- a adir cliente
   PROCEDURE addClient(c_nombre  CLIENTES.NOMBRE_CLIENTE%type, 
   c_apellido CLIENTES.PRIMER_APELLIDO_CLIENTE%type, 
   c_apellidodos  CLIENTES.SEGUNDO_APELLIDO_CLIENTE%type, 
   c_correo CLIENTES.CORREO_CLIENTE%type,  
   c_telefono  CLIENTES.TELEFONO_CLIENTE%type,
    c_cedula  CLIENTES.CEDULA_CLIENTE%type); 
   
   
   PROCEDURE delClient(c_cedula  CLIENTES.CEDULA_CLIENTE%TYPE); 
   
   PROCEDURE listClients; 
  
END clientes_package; 
/

CREATE OR REPLACE PACKAGE BODY clientes_package AS 
   PROCEDURE addClient(c_nombre  CLIENTES.NOMBRE_CLIENTE%type, 
   c_apellido CLIENTES.PRIMER_APELLIDO_CLIENTE%type, 
   c_apellidodos  CLIENTES.SEGUNDO_APELLIDO_CLIENTE%type, 
   c_correo CLIENTES.CORREO_CLIENTE%type,  
   c_telefono  CLIENTES.TELEFONO_CLIENTE%type,
    c_cedula  CLIENTES.CEDULA_CLIENTE%type)
   IS 
   BEGIN 
      INSERT INTO Clientes (NOMBRE_CLIENTE,PRIMER_APELLIDO_CLIENTE,SEGUNDO_APELLIDO_CLIENTE,CORREO_CLIENTE,TELEFONO_CLIENTE,CEDULA_CLIENTE) 
         VALUES(c_nombre, c_apellido, c_apellidodos,  c_correo,  c_telefono,c_cedula); 
   END addClient; 
   
   PROCEDURE delClient(c_cedula  CLIENTES.CEDULA_CLIENTE%type) IS 
   BEGIN 
      DELETE FROM Clientes
      WHERE CEDULA_CLIENTE = c_cedula; 
   END delClient;  
   
   PROCEDURE listClients IS 
   CURSOR c_clients is 
      SELECT * FROM CLIENTES;  
      Clientessave CLIENTES%ROWTYPE;
      
   BEGIN 
   open c_clients;
   loop 
   fetch c_clients into  Clientessave;
   exit when c_clients%notfound;
      dbms_output.put_line(Clientessave.NOMBRE_CLIENTE||' '|| Clientessave.CEDULA_CLIENTE); 
      END LOOP; 
   END listClients;
   
END clientes_package; 
/

execute clientes_package.listClients;

create or replace trigger Empleado_actualizado
after update on EMPLEADOS
for each row
declare
vEmpleado varchar2(50);
vfecha date;
begin
select user,sysdate into vEmpleado,vfecha from dual;
insert into auditoria (accion,usuario,fecha)
values ('El cliente actualizado es ' || :new.NOMBRE_EMPLEADO,vEmpleado,vfecha);
end;


Update EMPLEADOS SET NOMBRE_EMPLEADO= 'RAUL' WHERE ID_EMPLEADO = '01';


--------------------------------------------------
CREATE OR REPLACE PACKAGE PKG_PROVEEDORES AS
    -- Procedimiento para agregar un nuevo proveedor
    PROCEDURE AGREGAR_PROVEEDOR(
        p_NOMBRE_PROVEEDOR VARCHAR2,
        p_FECHA_CONTRATO DATE,
        p_CORREO_PROVEEDOR VARCHAR2,
        p_TELEFONO_PROVEEDOR VARCHAR2,
        p_ID_PROVEEDOR INT
    );
END PKG_PROVEEDORES;
/

-------- Crear el cuerpo del paquete
CREATE OR REPLACE PACKAGE BODY PKG_PROVEEDORES AS
    PROCEDURE AGREGAR_PROVEEDOR(
        p_NOMBRE_PROVEEDOR VARCHAR2,
        p_FECHA_CONTRATO DATE,
        p_CORREO_PROVEEDOR VARCHAR2,
        p_TELEFONO_PROVEEDOR VARCHAR2,
        p_ID_PROVEEDOR INT
    ) AS
    BEGIN
        INSERT INTO PROVEEDORES (
            NOMBRE_PROVEEDOR,
            FECHA_CONTRATO,
            CORREO_PROVEEDOR,
            TELEFONO_PROVEEDOR,
            ID_PROVEEDOR
        ) VALUES (
            p_NOMBRE_PROVEEDOR,
            p_FECHA_CONTRATO,
            p_CORREO_PROVEEDOR,
            p_TELEFONO_PROVEEDOR,
            p_ID_PROVEEDOR
        );
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END AGREGAR_PROVEEDOR;
END PKG_PROVEEDORES;

--------
DECLARE
    v_NOMBRE_PROVEEDOR VARCHAR2(25) := 'Proveedor Ejemplo';
    v_FECHA_CONTRATO DATE := TO_DATE('2023-08-21', 'YYYY-MM-DD');
    v_CORREO_PROVEEDOR VARCHAR2(25) := 'proveedor@example.com';
    v_TELEFONO_PROVEEDOR VARCHAR2(15) := '123456789';
    v_ID_PROVEEDOR INT := 1; -- Este valor debe ser único y no existente en la tabla
BEGIN
    PKG_PROVEEDORES.AGREGAR_PROVEEDOR(
        v_NOMBRE_PROVEEDOR,
        v_FECHA_CONTRATO,
        v_CORREO_PROVEEDOR,
        v_TELEFONO_PROVEEDOR,
        v_ID_PROVEEDOR
    );
    DBMS_OUTPUT.PUT_LINE('Proveedor agregado exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al agregar el proveedor: ' || SQLERRM);
END;

--------------------------------------------------

CREATE OR REPLACE PACKAGE PKG_CATEGORIAS AS
    -- Procedimiento para agregar una nueva categoría
    PROCEDURE AGREGAR_CATEGORIA(
        p_CATEGORIA VARCHAR2,
        p_ID_CATEGORIA INT
    );
END PKG_CATEGORIAS;
/

-- Crear el cuerpo del paquete
CREATE OR REPLACE PACKAGE BODY PKG_CATEGORIAS AS
    PROCEDURE AGREGAR_CATEGORIA(
        p_CATEGORIA VARCHAR2,
        p_ID_CATEGORIA INT
    ) AS
    BEGIN
        INSERT INTO CATEGORIAS (
            CATEGORIA,
            ID_CATEGORIA
        ) VALUES (
            p_CATEGORIA,
            p_ID_CATEGORIA
        );
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END AGREGAR_CATEGORIA;
END PKG_CATEGORIAS;

------------------

DECLARE
    v_CATEGORIA VARCHAR2(20) := 'Electrónica';
    v_ID_CATEGORIA INT := 1; -- Este valor debe ser único y no existente en la tabla
BEGIN
    PKG_CATEGORIAS.AGREGAR_CATEGORIA(
        v_CATEGORIA,
        v_ID_CATEGORIA
    );
    DBMS_OUTPUT.PUT_LINE('Categoría agregada exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al agregar la categoría: ' || SQLERRM);
END;

------------------------Editar categoria ------------------------------------

CREATE OR REPLACE PACKAGE PKG_CATEGORIAS AS
    -- Procedimiento para editar una categoría existente
    PROCEDURE EDITAR_CATEGORIA(
        p_ID_CATEGORIA INT,
        p_NUEVA_CATEGORIA VARCHAR2
    );
END PKG_CATEGORIAS;
/

-- Crear el cuerpo del paquete
CREATE OR REPLACE PACKAGE BODY PKG_CATEGORIAS AS
    PROCEDURE EDITAR_CATEGORIA(
        p_ID_CATEGORIA INT,
        p_NUEVA_CATEGORIA VARCHAR2
    ) AS
    BEGIN
        UPDATE CATEGORIAS
        SET CATEGORIA = p_NUEVA_CATEGORIA
        WHERE ID_CATEGORIA = p_ID_CATEGORIA;
        
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END EDITAR_CATEGORIA;
END PKG_CATEGORIAS;
---------------

DECLARE
    v_ID_CATEGORIA INT := 1; -- Debe ser un ID existente en la tabla

    v_NUEVA_CATEGORIA VARCHAR2(20) := 'Nueva Categoría';
BEGIN
    PKG_CATEGORIAS.EDITAR_CATEGORIA(
        v_ID_CATEGORIA,
        v_NUEVA_CATEGORIA
    );
    DBMS_OUTPUT.PUT_LINE('Categoría editada.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al editar: ' || SQLERRM);
END;

-------------------------Facturacion-----------------------------------

CREATE OR REPLACE PACKAGE PKG_FACTURACION AS
    -- Procedimiento para agregar una nueva factura
    PROCEDURE AGREGAR_FACTURA(
        p_FECHA_FACTURACION DATE,
        p_TOTAL FLOAT,
        p_CANTIDAD_ORDENADA INT,
        p_ID_PRODUCTO INT,
        p_ID_CLIENTE VARCHAR2,
        p_NOMBRE_PRODUCTO VARCHAR2,
        p_ID_FACTURA INT
    );
END PKG_FACTURACION;


CREATE OR REPLACE PACKAGE BODY PKG_FACTURACION AS
    PROCEDURE AGREGAR_FACTURA(
        p_FECHA_FACTURACION DATE,
        p_TOTAL FLOAT,
        p_CANTIDAD_ORDENADA INT,
        p_ID_PRODUCTO INT,
        p_ID_CLIENTE VARCHAR2,
        p_NOMBRE_PRODUCTO VARCHAR2,
        p_ID_FACTURA INT
    ) AS
    BEGIN
        INSERT INTO FACTURACION (
            FECHA_FACTURACION,
            TOTAL,
            CANTIDAD_ORDENADA,
            ID_PRODUCTO,
            ID_CLIENTE,
            NOMBRE_PRODUCTO,
            ID_FACTURA
        ) VALUES (
            p_FECHA_FACTURACION,
            p_TOTAL,
            p_CANTIDAD_ORDENADA,
            p_ID_PRODUCTO,
            p_ID_CLIENTE,
            p_NOMBRE_PRODUCTO,
            p_ID_FACTURA
        );
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END AGREGAR_FACTURA;
END PKG_FACTURACION;

-------------------------------------------------------------
-- Ejecutar el procedimiento del paquete para agregar una factura
DECLARE
    v_FECHA_FACTURACION DATE := TO_DATE('2023-08-21', 'YYYY-MM-DD');
    v_TOTAL FLOAT := 150.50;
    v_CANTIDAD_ORDENADA INT := 5;
    v_ID_PRODUCTO INT := 1; -- Debe ser un ID de producto 
    v_ID_CLIENTE VARCHAR2(20) := '123456789'; -- Debe ser una cédula de cliente 
    v_NOMBRE_PRODUCTO VARCHAR2(50) := 'Producto Ejemplo';
    v_ID_FACTURA INT := 1; -- Este valor debe ser único
BEGIN
    PKG_FACTURACION.AGREGAR_FACTURA(
        v_FECHA_FACTURACION,
        v_TOTAL,
        v_CANTIDAD_ORDENADA,
        v_ID_PRODUCTO,
        v_ID_CLIENTE,
        v_NOMBRE_PRODUCTO,
        v_ID_FACTURA
    );
    DBMS_OUTPUT.PUT_LINE('Factura agregada exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al agregar la factura: ' || SQLERRM);
END;

-------------------------Editar Factura------------------------------------


CREATE OR REPLACE PACKAGE PKG_FACTURACION AS
    -- Procedimiento para editar una factura existente
    PROCEDURE EDITAR_FACTURA(
        p_ID_FACTURA INT,
        p_NUEVA_FECHA DATE,
        p_NUEVO_TOTAL FLOAT,
        p_NUEVA_CANTIDAD_ORDENADA INT,
        p_NUEVO_ID_PRODUCTO INT,
        p_NUEVO_ID_CLIENTE VARCHAR2,
        p_NUEVO_NOMBRE_PRODUCTO VARCHAR2
    );
END PKG_FACTURACION;
/

-- Crear el cuerpo del paquete
CREATE OR REPLACE PACKAGE BODY PKG_FACTURACION AS
    PROCEDURE EDITAR_FACTURA(
        p_ID_FACTURA INT,
        p_NUEVA_FECHA DATE,
        p_NUEVO_TOTAL FLOAT,
        p_NUEVA_CANTIDAD_ORDENADA INT,
        p_NUEVO_ID_PRODUCTO INT,
        p_NUEVO_ID_CLIENTE VARCHAR2,
        p_NUEVO_NOMBRE_PRODUCTO VARCHAR2
    ) AS
    BEGIN
        UPDATE FACTURACION
        SET
            FECHA_FACTURACION = p_NUEVA_FECHA,
            TOTAL = p_NUEVO_TOTAL,
            CANTIDAD_ORDENADA = p_NUEVA_CANTIDAD_ORDENADA,
            ID_PRODUCTO = p_NUEVO_ID_PRODUCTO,
            ID_CLIENTE = p_NUEVO_ID_CLIENTE,
            NOMBRE_PRODUCTO = p_NUEVO_NOMBRE_PRODUCTO
        WHERE ID_FACTURA = p_ID_FACTURA;
        
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END EDITAR_FACTURA;
END PKG_FACTURACION;

-------------------------------------------------------------
-- Ejecutar el procedimiento del paquete para editar una factura
DECLARE
    v_ID_FACTURA INT := 1; -- Debe ser un ID de factura
    v_NUEVA_FECHA DATE := TO_DATE('2023-08-21', 'YYYY-MM-DD');
    v_NUEVO_TOTAL FLOAT := 200.00;
    v_NUEVA_CANTIDAD_ORDENADA INT := 10;
    v_NUEVO_ID_PRODUCTO INT := 2; -- Debe ser un ID de producto 
    v_NUEVO_ID_CLIENTE VARCHAR2(20) := '987654321'; -- Debe ser una cédula de cliente 
    v_NUEVO_NOMBRE_PRODUCTO VARCHAR2(50) := 'Nuevo Producto';
BEGIN
    PKG_FACTURACION.EDITAR_FACTURA(
        v_ID_FACTURA,
        v_NUEVA_FECHA,
        v_NUEVO_TOTAL,
        v_NUEVA_CANTIDAD_ORDENADA,
        v_NUEVO_ID_PRODUCTO,
        v_NUEVO_ID_CLIENTE,
        v_NUEVO_NOMBRE_PRODUCTO
    );
    DBMS_OUTPUT.PUT_LINE('Factura editada exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al editar la factura: ' || SQLERRM);
END;

-----------------------Del Producto--------------------------------------

CREATE OR REPLACE PACKAGE PKG_PRODUCTOS AS
    -- Procedimiento para eliminar un producto
    PROCEDURE ELIMINAR_PRODUCTO(
        p_ID_PRODUCTO INT
    );
END PKG_PRODUCTOS;


-- Crear el cuerpo del paquete
CREATE OR REPLACE PACKAGE BODY PKG_PRODUCTOS AS
    PROCEDURE ELIMINAR_PRODUCTO(
        p_ID_PRODUCTO INT
    ) AS
    BEGIN
        DELETE FROM PRODUCTOS
        WHERE ID_PRODUCTO = p_ID_PRODUCTO;
        
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END ELIMINAR_PRODUCTO;
END PKG_PRODUCTOS;

------------------------------------------------------

-- Ejecutar el procedimiento del paquete para eliminar un producto

DECLARE
    v_ID_PRODUCTO INT := 1; 
BEGIN
    PKG_PRODUCTOS.ELIMINAR_PRODUCTO(v_ID_PRODUCTO);
    DBMS_OUTPUT.PUT_LINE('Producto eliminado exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al eliminar el producto: ' || SQLERRM);
END;


