-- SE CREA LA BASE DE DATOS Y SE ACTIVA --

CREATE DATABASE Assiscor;
USE Assiscor;

-- CREACION DE LA TABLA DE "USERS" (Usuarios/Empleados) --

CREATE TABLE users (

    id_users INT NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    genero VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) UNIQUE NOT NULL,
    PRIMARY KEY (id_users)

);

-- INSERCCION DE LOS DATOS DENTRO DE LA TABLA DE "USERS" (Usuarios/Empleados) --

INSERT INTO users (id_users, name,edad,genero,email,password) 
    VALUES 
    (1, "Santiago Camacho Parra", 18,"Masculino", "snatiago128@gmail.com","admin123"),
    (2, "Laura Vanesa Gutierrez Lozano", 18,"Femenino", "lauragutierrez01@gmail.com","empanada1212"),
    (3, "Juan Sebastian Tovar Roa", 19,"Masculino", "tovarroa09@gmail.com","root9090"),
    (4, "Stiven Ramirez Lugo", 21,"Masculino", "ramirezlugo50@gmail.com","ramirezlugo65"),
    (5, "Maria Victoria Chavarro", 23,"Femenino", "mariavictoria001@gmail.com","1234567");
