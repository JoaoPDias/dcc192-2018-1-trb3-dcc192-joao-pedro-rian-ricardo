
package DAOs;

import Models.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rian Alves
 */
public class UsuarioDAO {
    
    private static Connection conexao;
    private static UsuarioDAO dao;

    public UsuarioDAO() throws SQLException {
        UsuarioDAO.conexao = Conexao.getConexao();
    }
    public static UsuarioDAO getInstance() {
       if (dao == null) {
            try {
                dao = new UsuarioDAO();
            } catch (SQLException ex) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return dao;
    }

    public void adicionar(Usuario usuario) {
         String sql = "INSERT INTO USUARIO(nome, email,senha) VALUES(?,?,MD5(?))";
        try (PreparedStatement comando = conexao.prepareStatement(sql)) {
            comando.setString(1, usuario.getNome());
            comando.setString(2, usuario.getEmail());
            comando.setString(3, usuario.getSenha());
            comando.execute();
            comando.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}