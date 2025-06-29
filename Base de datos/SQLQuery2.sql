USE MegaLibros;

CREATE TABLE Generos (
	GeneroID INT PRIMARY KEY IDENTITY,
	Nombre VARCHAR (50) NOT NULL,
	EsFavorito BIT NOT NULL DEFAULT 0
);

CREATE TABLE Libros (
	LibroID INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255) NOT NULL,
	Autor VARCHAR(255) NOT NULL,
	GeneroID INT NOT NULL,
	Calificacion INT NULL,
	Leido BIT NOT NULL DEFAULT 0,
	PorLeer BIT NOT NULL DEFAULT 0,
	Recomendado BIT NOT NULL DEFAULT 0,
	Prestado BIT NOT NULL DEFAULT 0,
	PrestadoA VARCHAR(100) NULL,
	FechaPrestamo DATETIME NULL,
	FOREIGN KEY (GeneroID) REFERENCES Generos(GeneroID)
);