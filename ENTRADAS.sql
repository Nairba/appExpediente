
use EMEP

SELECT * FROM Tipo_Usuario
SELECT * FROM Usuario
SELECT * FROM Especialidad
SELECT * FROM Categoria
SELECT * FROM Horario
SELECT * FROM Consultorio

--ESPECIALIDADES--
INSERT INTO Especialidad(descripcion) Values('Especialidad en Alergolog�a')
INSERT INTO Especialidad(descripcion) Values('Especialidad en Dermatolog�a')
INSERT INTO Especialidad(descripcion) Values('Especialidad en Cardiolog�a')
INSERT INTO Especialidad(descripcion) Values('Especialidad en Cirug�a Cardiovascular Tor�cica')
INSERT INTO Especialidad(descripcion) Values('Especialidad en Cirug�a General')
INSERT INTO Especialidad(descripcion) Values('Especialidad en Medicina Familiar y Comunitaria')
INSERT INTO Especialidad(descripcion) Values('Especialidad en Medicina F�sica y Rehabilitaci�n')
INSERT INTO Especialidad(descripcion) Values('Especialidad en Medicina Interna')
INSERT INTO Especialidad(descripcion) Values('Especialidad en Psiquiatr�a')
INSERT INTO Especialidad(descripcion) Values('Especialidad en Psicolog�a Cl�nica')
INSERT INTO Especialidad(descripcion) Values('Especialidad en Oftalmolog�a')

--CONSULTORIO--
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Uno')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Dos')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Tres')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Cuatro')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Cinco')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Seis')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Siente')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Ocho')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Nueve')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Diez')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Once')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Doce')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Trese')
INSERT INTO Consultorio(descripcion) VALUES('Consultorio Catorse')

--CONSULTA--
SELECT con.id, con.precio, u.nombre AS nombreMedico, 
u.p_Apellido AS apellido_1Medico, 
u.s_Apellido AS apellido_2Medico, 
co.descripcion AS Consultorio, es.descripcion AS Especialidad
FROM Consulta con
INNER JOIN Usuario u ON u.correoID = con.ID_MEDICO
INNER JOIN Consultorio co ON co.id = con.ID_CONSULTORIO
INNER JOIN Especialidad es ON es.id= con.ID_ESPECIALIDAD

INSERT INTO Consulta(ID_MEDICO,ID_CONSULTORIO,precio,ID_ESPECIALIDAD)
VALUES('man@gmail.com',1,20000,1)

UPDATE Consulta SET ID_MEDICO='man@gmail.com', ID_CONSULTORIO=2,precio=30000,ID_ESPECIALIDAD=1
WHERE id=1

--ELIMINAR--
Delete Consulta

--REINICIAR IDENTITY--
DBCC CHECKIDENT(Consulta,RESEED,0)