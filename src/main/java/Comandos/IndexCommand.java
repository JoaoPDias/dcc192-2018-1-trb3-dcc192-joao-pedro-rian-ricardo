package Comandos;

import com.google.gson.Gson;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexCommand implements Comando {

    @Override
    public void exec(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        Integer idUsuario = (Integer) request.getSession().getAttribute("usuario");
        try {
            if (idUsuario != null) {
                RequestDispatcher despachante = request.getRequestDispatcher("/WEB-INF/index.jsp");
                despachante.forward(request, response);
            } else {
                response.sendRedirect("login.html");
            }
        } catch (ServletException | IOException ex) {
            Logger.getLogger(IndexCommand.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
