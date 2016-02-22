CREATE TABLE [dbo].[Table]
(
	[Email] VARCHAR(50) NOT NULL PRIMARY KEY, 
    [Nombre] VARCHAR(50) NOT NULL, 
    [Apellidos] VARCHAR(50) NOT NULL, 
    [DNI] VARCHAR(8) NOT NULL, 
    [Password] VARCHAR(50) NOT NULL, 
    [Pregunta] VARCHAR(50) NOT NULL, 
    [Respuesta] VARCHAR(50) NOT NULL, 
    [NumeroConfirmacion] VARCHAR(50) NOT NULL, 
    [Confirmado] BIT NOT NULL
)
