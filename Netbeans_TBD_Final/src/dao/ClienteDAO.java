package dao;

import utilidades.Cliente;
import java.sql.*;

public class ClienteDAO implements DAO<Cliente> {
    private final Connection conexion;

    public ClienteDAO(Connection conexion) {
        this.conexion = conexion;
    }

    @Override
    public void insertar(Cliente cliente) {       
        try {
            conexion.setAutoCommit(false);
            String sql = "INSERT INTO clientes (ci, nombres, apellidos, direccion) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = conexion.prepareStatement(sql);
            statement.setInt(1, cliente.ci);
            statement.setString(2, cliente.nombres);
            statement.setString(3, cliente.apellidos);
            statement.setString(4, cliente.direccion);
            statement.executeUpdate();
            for (String telefono : cliente.telefonos) {
                sql = "INSERT INTO telefonos (ci, numero) VALUES (?, ?)";
                statement = conexion.prepareStatement(sql);
                statement.setInt(1, cliente.ci);
                statement.setString(2, telefono);
                statement.executeUpdate();
            }
            statement.close();
            conexion.commit();
            System.out.println("Cliente insertado correctamente");
            conexion.setAutoCommit(true);
        } catch (SQLException e) {
            try {
                conexion.rollback();
                System.out.println("Error al insertar el cliente");
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
            System.out.println(e.toString());
        }
    }
}


