/*
No cambie las variables de nombre o ruta de acceso de la base de datos.
Cualquier variable sqlcmd será correctamente sustituida durante 
la compilación y la implementación.
*/
ALTER DATABASE [$(DatabaseName)]
	ADD FILE
	(
		NAME = [SqlFile1],
		FILENAME = '$(DefaultDataPath)$(DefaultFilePrefix)_SqlFile1.ndf'
	)
	
