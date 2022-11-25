package pe.edu.uni.ventapasajes.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import pe.edu.uni.ventapasajes.db.AccesoDB;
import pe.edu.uni.ventapasajes.model.ClienteModel;

/**
 *
 * @author Gustavo Coronel
 */
public class CrudClienteImpl implements CrudServiceSpec<ClienteModel>, RowMapper<ClienteModel> {

    private final String SELECT_BASE = "SELECT IDCLIENTE,NOMBRE,APELLIDO,DNI,DISTRITO,CORREO,TELEFONO FROM CLIENTE";

    @Override
    public ClienteModel findById(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<ClienteModel> findAll() {
        List<ClienteModel> lista = new ArrayList<>();
        Connection cn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        ClienteModel model = null;
        try {
            cn = AccesoDB.getConnection();
            pstm = cn.prepareStatement(SELECT_BASE);
            rs = pstm.executeQuery();
            while (rs.next()) {
                model = new ClienteModel();
                model.setId(rs.getInt("IDCLIENTE"));
                model.setNombre(rs.getString("NOMBRE"));
                model.setApellido(rs.getString("APELLIDO"));
                model.setDni(rs.getString("DNI"));
                model.setDistrito(rs.getString("DISTRITO"));
                model.setCorreo(rs.getString("CORREO"));
                model.setTelefono(rs.getString("TELEFONO"));
                lista.add(model);
            }
            rs.close();
            pstm.close();
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage());
        } catch (Exception e) {
            throw new RuntimeException("Error en el proceso. ejecutelo nuevamente.");
        } finally {
            try {
                cn.close();
            } catch (Exception e) {
            }
        }

        return lista;
    }

    @Override
    public List<ClienteModel> find(ClienteModel model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(ClienteModel model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(ClienteModel model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ClienteModel mapRow(ResultSet rs) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
