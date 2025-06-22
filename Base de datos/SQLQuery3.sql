USE MegaLibros;

INSERT INTO Generos (Nombre, EsFavorito)
VALUES
	('Novela', 1),
	('Ciencia Ficcion', 1),
	('Tecnologia', 0),
	('Desarrollo Personal', 0),
	('Fantasia', 1);


-- Libro leído con calificación y no prestado
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('1984', 'George Orwell', 2, 9, 1, 0, 1, 0);

-- Libro por leer, sin calificación aún
INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado)
VALUES ('El poder del ahora', 'Eckhart Tolle', 4, 0, 1, 1, 0);

-- Libro prestado con nombre y fecha de préstamo, sin calificación
INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado, PrestadoA, FechaPrestamo)
VALUES ('Ready Player One', 'Ernest Cline', 2, 0, 1, 1, 1, 'Juan Pérez', GETDATE());

-- Libro leído, calificado, y prestado a alguien más
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado, PrestadoA, FechaPrestamo)
VALUES ('Cien años de soledad', 'Gabriel García Márquez', 1, 10, 1, 0, 1, 1, 'Ana López', '2025-06-01');

-- Libro sin calificación, no leído ni por leer (estado neutral), no prestado
INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Clean Code', 'Robert C. Martin', 3, 0, 0, 1, 0);

-- Libro con calificación pero no leído ni por leer (ejemplo especial)
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('The Pragmatic Programmer', 'Andrew Hunt', 3, 8, 0, 0, 0, 0);


-- xd nuevos

-- Libro leído, con calificación baja (0)
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Libro olvidado', 'Autor Desconocido', 1, 0, 1, 0, 0, 0);

-- Libro no leído, sin calificación
INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Aprende SQL', 'Carlos Ruiz', 3, 0, 1, 0, 0);

-- Libro leído, calificación 1
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('El peor libro', 'Autor Crítico', 1, 1, 1, 0, 0, 0);

-- Libro por leer, calificación 2, no leído
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Tal vez útil', 'Ana Castillo', 4, 2, 0, 1, 0, 0);

-- Libro leído y prestado, con calificación 3
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado, PrestadoA, FechaPrestamo)
VALUES ('Mindset', 'Carol Dweck', 4, 3, 1, 0, 1, 1, 'Lucía Gómez', '2025-06-10');

-- Libro con calificación 5, no leído ni por leer (ejemplo neutro)
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Big Data', 'Tom White', 3, 5, 0, 0, 0, 0);

-- Libro leído, calificación 7, no prestado
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('El alquimista', 'Paulo Coelho', 1, 7, 1, 0, 1, 0);

-- Libro prestado, sin calificación ni leído
INSERT INTO Libros (Titulo, Autor, GeneroID, Leido, PorLeer, Recomendado, Prestado, PrestadoA, FechaPrestamo)
VALUES ('Inteligencia emocional', 'Daniel Goleman', 4, 0, 1, 1, 1, 'María López', '2025-06-15');

-- Libro leído, calificación 2, no prestado
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Crónica de una muerte anunciada', 'G. García Márquez', 1, 2, 1, 0, 1, 0);

-- Libro técnico, leído y con calificación 10
INSERT INTO Libros (Titulo, Autor, GeneroID, Calificacion, Leido, PorLeer, Recomendado, Prestado)
VALUES ('Estructuras de Datos en C', 'Luis Joyanes Aguilar', 3, 10, 1, 0, 1, 0);
