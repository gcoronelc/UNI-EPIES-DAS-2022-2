package pe.edu.uni.ventapasajes.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AccesoDB {

	private AccesoDB() {
	}

	public static Connection getConnection() throws SQLException {
		Connection cn = null;
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String urlDB = "jdbc:sqlserver://172.20.40.11\\SQLEXPRESS:1433;databaseName=VENTAS";
		String user = "sa";
		String pass = "sql";
		try {
			// Paso 1: Cargar el driver a memoria 
			Class.forName(driver).newInstance();
			// Paso 2: Obtener el objeto Connection 
			cn = DriverManager.getConnection(urlDB, user, pass);
		} catch (SQLException e) {
			throw e;
		} catch (ClassNotFoundException e) {
			throw new SQLException("No se encontró el driver de la base de datos.");
		} catch (Exception e) {
			throw new SQLException("No se puede establecer la conexión con la BD.");
		}
		return cn;
	}

}
