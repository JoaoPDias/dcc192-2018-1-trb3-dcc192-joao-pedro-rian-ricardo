package Comandos;

import DAOs.ComentarioDAO;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pedro
 */
public class ExcluirComentarioCommand implements Comando {

    @Override
    public void exec(HttpServletRequest request, HttpServletResponse response) {
        try {
            int idComent = Integer.parseInt(request.getParameter("idComent"));
            ComentarioDAO.getInstance().excluirComentario(idComent);
            response.sendRedirect("meusComentarios.html?excluido=true");
        } catch (IOException ex) {
            Logger.getLogger(ItemExcluirCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
