CREATE TABLE Epocas (
  id INT PRIMARY KEY,
  nombre VARCHAR(255) UNIQUE,
  periodo_inicio INT,
  periodo_final INT,
  estilos_artisticos VARCHAR(255)
);


CREATE TABLE Generos (
  id INT PRIMARY KEY,
  nombre VARCHAR(255) UNIQUE,
  caracteristicas VARCHAR(255),
  origenes VARCHAR(255),
  artistas_asociados VARCHAR(255)
);


CREATE TABLE Artistas (
  id INT PRIMARY KEY,
  nombre VARCHAR(255) UNIQUE,
  fecha_nacimiento DATE,
  fecha_muerte DATE,
  historia_vida TEXT
);

CREATE TABLE Obras (
  id INT PRIMARY KEY,
  nombre VARCHAR(255) UNIQUE,
  ano INT,
  estilo_id INT,
  FOREIGN KEY (estilo_id) REFERENCES Epocas(id)
);