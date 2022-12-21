
import Model.Usuario;
import Model.UsuarioJpaController;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;

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