
import Model.Usuario;
import Model.UsuarioJpaController;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Augusto
 */
public class ValidaLogin {

    public boolean validaLogin(String _nome, String _senha, String user_bd, String pw_bd) throws ServletException {

        EntityManagerFactory enf = Persistence.createEntityManagerFactory("persistence");
        UsuarioJpaController ujc = new UsuarioJpaController(enf);
        Usuario u = ujc.findUsuario(_nome);

        if (u == null) {
            return false;
        }
        return u.getSenha().equals(_senha);
    }
}
// Pega senha do banco de dados;
//        boolean result = false;
//        String JDBC_DRIVER = "org.apache.derby.jdbc.ClientDriver";
//        String DB_URL = "jdbc:derby://localhost:1527/lpsw";
//        //  Database credentials
//        Connection conn = null;
//        Statement stmt = null;
//        String resp = "EXECUTOU";
//        // Set response content type
//        try {
//            // Register JDBC driver
//            Class.forName(JDBC_DRIVER);
//            // Open a connection
//            conn = DriverManager.getConnection(DB_URL, user_bd, pw_bd);
//            // Execute SQL query
//            stmt = conn.createStatement();
//            String sql;
//            sql = "SELECT nome, senha FROM USUARIO where upper(nome) = '"
//                    + _nome.toUpperCase() + "' and senha='" + _senha + "'";
//            ResultSet rs = stmt.executeQuery(sql);
//            // Extract data from result set
//            if (rs.next()) {
//                result = true;
//            }
//            rs.close();
//            stmt.close();
//            conn.close();
//        } catch (SQLException e) {
//            //Handle errors for JDBC
//            //throw new ServletException(e);
//            resp = e.getMessage();
//            throw new ServletException(e);
//        } catch (Exception e) {
//            //Handle errors for Class.forName
//            //throw new ServletException(e);
//            resp = e.getMessage();
//            throw new ServletException(e);
//        } finally {
//            //finally block used to close resources
//            try {
//                if (stmt != null) {
//                    stmt.close();
//                }
//            } catch (SQLException e) {
//                throw new ServletException(e);
//            }// nothing we can do
//            try {
//                if (conn != null) {
//                    conn.close();
//                }
//            } catch (SQLException e) {
//                throw new ServletException(e);
//            }//end finally try
//        } //end try    
//        return result;
//    }
//}
