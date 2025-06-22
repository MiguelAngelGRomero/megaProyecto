USE MegaLibros;

INSERT INTO Generos (Nombre, EsFavorito)
VALUES
	('Novela', 1),
	('Ciencia Ficcion', 1),
	('Tecnologia', 0),
	('Desarrollo Personal', 0),
	('Fantasia', 1);


-- Libro le�do con calificaci�n y no prestado
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('1984', 'George Orwell', 2, 9, 1, 0, 1, 0);

-- Libro por leer, sin calificaci�n a�n
INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado)
VALUES ('El poder del ahora', 'Eckhart Tolle', 4, 0, 1, 1, 0);

-- Libro prestado con nombre y fecha de pr�stamo, sin calificaci�n
INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado, PrestadoA, FechaPrestamo)
VALUES ('Ready Player One', 'Ernest Cline', 2, 0, 1, 1, 1, 'Juan P�rez', GETDATE());

-- Libro le�do, calificado, y prestado a alguien m�s
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado, PrestadoA, FechaPrestamo)
VALUES ('Cien a�os de soledad', 'Gabriel Garc�a M�rquez', 1, 10, 1, 0, 1, 1, 'Ana L�pez', '2025-06-01');

-- Libro sin calificaci�n, no le�do ni por leer (estado neutral), no prestado
INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Clean Code', 'Robert C. Martin', 3, 0, 0, 1, 0);

-- Libro con calificaci�n pero no le�do ni por leer (ejemplo especial)
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('The Pragmatic Programmer', 'Andrew Hunt', 3, 8, 0, 0, 0, 0);


-- xd nuevos

-- Libro le�do, con calificaci�n baja (0)
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Libro olvidado', 'Autor Desconocido', 1, 0, 1, 0, 0, 0);

-- Libro no le�do, sin calificaci�n
INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Aprende SQL', 'Carlos Ruiz', 3, 0, 1, 0, 0);

-- Libro le�do, calificaci�n 1
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('El peor libro', 'Autor Cr�tico', 1, 1, 1, 0, 0, 0);

-- Libro por leer, calificaci�n 2, no le�do
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Tal vez �til', 'Ana Castillo', 4, 2, 0, 1, 0, 0);

-- Libro le�do y prestado, con calificaci�n 3
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado, PrestadoA, FechaPrestamo)
VALUES ('Mindset', 'Carol Dweck', 4, 3, 1, 0, 1, 1, 'Luc�a G�mez', '2025-06-10');

-- Libro con calificaci�n 5, no le�do ni por leer (ejemplo neutro)
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Big Data', 'Tom White', 3, 5, 0, 0, 0, 0);

-- Libro le�do, calificaci�n 7, no prestado
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('El alquimista', 'Paulo Coelho', 1, 7, 1, 0, 1, 0);

-- Libro prestado, sin calificaci�n ni le�do
INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado, PrestadoA, FechaPrestamo)
VALUES ('Inteligencia emocional', 'Daniel Goleman', 4, 0, 1, 1, 1, 'Mar�a L�pez', '2025-06-15');

-- Libro le�do, calificaci�n 2, no prestado
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Cr�nica de una muerte anunciada', 'G. Garc�a M�rquez', 1, 2, 1, 0, 1, 0);

-- Libro t�cnico, le�do y con calificaci�n 10
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Estructuras de Datos en C', 'Luis Joyanes Aguilar', 3, 10, 1, 0, 1, 0);
