package sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/inmobiliaria_DEGA";
    private static final String USUARIO = "root";
    private static final String CONTRASENIA = "12qwaszx";

    public Connection conexion;

    public Conexion() {
        try {
            Class.forName(CONTROLADOR);
        } catch (ClassNotFoundException e) {
            System.out.println("Error al cargar el controlador");
            System.out.println(e.toString());
        }
    }

    public void conectar() throws SQLException {
        if (conexion == null || conexion.isClosed()) {
            conexion = DriverManager.getConnection(URL, USUARIO, CONTRASENIA);
            System.out.println("Conexion establecida");
        }
    }

    public void desconectar() throws SQLException {
        if (conexion != null && !conexion.isClosed()) {
            conexion.close();
            System.out.println("Conexion cerrada");
        }
    }
}

