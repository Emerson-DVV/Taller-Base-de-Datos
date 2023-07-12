package dao;

/**
 * @author Emer
 */
import utilidades.requerimientos.*;
import java.sql.*;
import java.util.Date;

public class RequerimientosDAO implements DAO {

    private final Connection conexion;
    public int id_rg, id_re, ci;

    public RequerimientosDAO(Connection conexion) {
        this.conexion = conexion;
    }

    @Override
    public void insertar(Object object) {
        try {
            conexion.setAutoCommit(false);
            if (object instanceof Casa_Requerimientos_Especificos) {
                insertarC((Casa_Requerimientos_Especificos) object);
            } else if (object instanceof Departamento_Requerimientos_Especificos) {
                insertarD((Departamento_Requerimientos_Especificos) object);
            } else if (object instanceof Garzonier_Requerimientos_Especificos) {
                insertarG((Garzonier_Requerimientos_Especificos) object);
            } else {
                insertarL((Lote_Requerimientos_Especificos) object);
            }
            conexion.setAutoCommit(true);
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
    }

    private void insertarC(Casa_Requerimientos_Especificos cre) {
        insertarG((Requerimientos_Generales) ((Requerimientos_Especificos) cre));
        insertarE((Requerimientos_Especificos) cre);
        try {
            String sql = "INSERT INTO casa_requerimientos_especificos "
                    + "(id_re, garaje, patio, superficie_construccion, numero_plantas) "
                    + "VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = conexion.prepareStatement(sql);
            statement.setInt(1, id_re);
            statement.setBoolean(2, cre.garaje);
            statement.setBoolean(3, cre.patio);
            statement.setInt(4, cre.superficie_construccion);
            statement.setInt(5, cre.numero_plantas);
            statement.executeUpdate();            
            statement.close();
            conexion.commit();
            System.out.println("Requerimiento especifico de casa insertado correctamente");
        } catch (SQLException e) {
            try {
                conexion.rollback();
                System.out.println("Error al insertar el requerimiento especifico de casa");
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
            System.out.println(e.toString());
        }
    }

    private void insertarD(Departamento_Requerimientos_Especificos dre) {
        insertarG((Requerimientos_Generales) ((Requerimientos_Especificos) dre));
        insertarE((Requerimientos_Especificos) dre);
        try {
            String sql = "INSERT INTO departamento_requerimientos_especificos (id_re, numero_estacionamiento, permiso_mascota, numero_piso) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = conexion.prepareStatement(sql);
            statement.setInt(1, id_re);
            statement.setString(2, dre.numero_estacionamiento);
            statement.setBoolean(3, dre.permiso_mascota);
            statement.setInt(4, dre.numero_piso);
            statement.executeUpdate();
            statement.close();
            conexion.commit();
            System.out.println("Requerimiento especifico de departamento insertado correctamente");
        } catch (SQLException e) {
            try {
                conexion.rollback();
                System.out.println("Error al insertar el requerimiento especifico de departamento");
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
            System.out.println(e.toString());
        }
    }

    private void insertarG(Garzonier_Requerimientos_Especificos gre) {
        insertarG((Requerimientos_Generales) ((Requerimientos_Especificos) gre));
        insertarE((Requerimientos_Especificos) gre);
        try {
            String sql = "INSERT INTO garzonier_requerimientos_especificos (id_re, amueblado, capacidad_maxima) VALUES (?, ?, ?)";
            PreparedStatement statement = conexion.prepareStatement(sql);
            statement.setInt(1, id_re);
            statement.setBoolean(2, gre.amueblado);
            statement.setInt(3, gre.capacidad_maxima);
            statement.executeUpdate();
            statement.close();
            conexion.commit();
            System.out.println("Requerimiento especifico de garzonier insertado correctamente");
        } catch (SQLException e) {
            try {
                conexion.rollback();
                System.out.println("Error al insertar el requerimiento especifico de garzonier");
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
            System.out.println(e.toString());
        }
    }

    private void insertarL(Lote_Requerimientos_Especificos lre) {
        insertarG((Requerimientos_Generales) lre);
        try {
            String sql = "INSERT INTO lote_requerimientos_especificos (id_rg, uso_actual, topografia) VALUES (?, ?, ?)";
            PreparedStatement statement = conexion.prepareStatement(sql);
            statement.setInt(1, id_rg);
            statement.setString(2, lre.uso_actual);
            statement.setBoolean(3, lre.topografia);
            statement.executeUpdate();
            statement.close();
            conexion.commit();
            System.out.println("Requerimiento especifico de lote insertado correctamente");
        } catch (SQLException e) {
            try {
                conexion.rollback();
                System.out.println("Error al insertar el requerimiento especifico de lote");
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
            System.out.println(e.toString());
        }
    }

    private void insertarE(Requerimientos_Especificos re) {
        try {
            String sql = "INSERT INTO requerimientos_especificos"
                    + " (id_rg, sala, comedor, cocina, dormitorios, "
                    + "banios, antiguedad_construccion) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conexion.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            statement.setInt(1, id_rg);
            statement.setBoolean(2, re.sala);
            statement.setBoolean(3, re.comedor);
            statement.setBoolean(4, re.cocina);
            statement.setInt(5, re.dormitorios);
            statement.setInt(6, re.banios);
            statement.setInt(7, re.antiguedad_construccion);
            statement.executeUpdate();
            ResultSet generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                id_re = generatedKeys.getInt(1);
            }
            // Cerrar los recursos
            generatedKeys.close();
            statement.close();
            conexion.commit();
            System.out.println("Requerimiento especifico insertado correctamente");
        } catch (SQLException e) {
            try {
                conexion.rollback();
                System.out.println("Error al insertar el requerimiento especifico");
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
            System.out.println(e.toString());
        }
    }

    private void insertarG(Requerimientos_Generales rg) {
        try {
            String sql = "INSERT INTO requerimientos_generales "
                    + "(ci, fecha_creacion, ubicacion, tipo_inmueble, tipo_oferta, "
                    + "precio_minimo, precio_maximo, superficie)"
                    + " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conexion.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            Date fechaActual = new Date();
            statement.setInt(1, ci);
            statement.setDate(2, new java.sql.Date(fechaActual.getTime()));
            statement.setString(3, rg.ubicacion);
            statement.setString(4, rg.tipo_inmueble);
            statement.setString(5, rg.tipo_oferta);
            statement.setInt(6, rg.precio_minimo);
            statement.setInt(7, rg.precio_maximo);
            statement.setInt(8, rg.superficie);
            statement.executeUpdate();
            ResultSet generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                id_rg = generatedKeys.getInt(1);
            }
            // Cerrar los recursos
            generatedKeys.close();
            statement.close();
            conexion.commit();
            System.out.println("Requerimiento general insertado correctamente");
        } catch (SQLException e) {
            try {
                conexion.rollback();
                System.out.println("Error al insertar el requerimiento general");
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
            System.out.println(e.toString());
        }
    }
}
