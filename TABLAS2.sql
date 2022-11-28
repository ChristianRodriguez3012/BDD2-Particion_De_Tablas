CREATE TABLE Clientes(  
    ID_cliente SERIAL NOT NULL PRIMARY KEY,
    DNI VARCHAR(255),
    Name VARCHAR(255),
    Lastname VARCHAR(255)
);
CREATE TABLE Clientes_Empresa(  
   	RUC VARCHAR(255),
   	Company_Name VARCHAR(255)
)INHERITS(Clientes)
;