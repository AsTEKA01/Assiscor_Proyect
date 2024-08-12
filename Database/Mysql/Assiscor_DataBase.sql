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

INSERT INTO users (id_users,name,edad,genero,email,password)
    VALUES 
    (1, "Santiago Camacho Parra", 18,"Masculino", "snatiago128@gmail.com","admin123"),
    (2, "Laura Vanesa Gutierrez Lozano", 18,"Femenino", "lauragutierrez01@gmail.com","empanada1212"),
    (3, "Juan Sebastian Tovar Roa", 19,"Masculino", "tovarroa09@gmail.com","root9090"),
    (4, "Stiven Ramirez Lugo", 21,"Masculino", "ramirezlugo50@gmail.com","ramirezlugo65"),
    (5, "Maria Victoria Chavarro", 23,"Femenino", "mariavictoria001@gmail.com","1234567");

-- SE CREA LA TABLE DE LOS ADMINISTRADORES --

CREATE TABLE admins (
    id_admin INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- SE INSERTAN LOS DATOS COMO VALORES PARA INGRESARLOS DENTRO DE LA TABLA DE (Admins/Administradores)

INSERT INTO admins (name, email, password)
VALUES 
    ("Carlos Martínez", "carlos.martinez@gmail.com", "root1212"),
    ("Ana Gómez", "ana.gomez@gmail.com", "securepass1010");

