
package controlador;

import dao.OradoresDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Oradores;

@WebServlet("/vistas/GestionOradorServlet")
public class GestionOrador  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        OradoresDao oradoresDAO = new OradoresDao();

        // Inicializar idOrador antes del switch para que esté disponible en todos los casos
        int idOrador = Integer.parseInt(request.getParameter("id"));

        switch (accion) {
            case "actualizar":
                Oradores orador = oradoresDAO.obtenerPorId(idOrador);
                request.setAttribute("orador", orador); //Esto permite pasar datos del servlet a una vista (como un archivo JSP) o a otro servlet al que se redirige o se reenvía la solicitud
                request.getRequestDispatcher("actualizar.jsp").forward(request, response);
                break;
            case "confirmarActualizacion":
                Oradores oradorActualizado = new Oradores();
                oradorActualizado.setIdOrador(idOrador);
                oradorActualizado.setNombre(request.getParameter("nombre"));
                oradorActualizado.setApellido(request.getParameter("apellido"));
                oradorActualizado.setMail(request.getParameter("mail"));
                oradorActualizado.setTema(request.getParameter("tema"));
                // Asume que el método setFechaAlta acepta un java.sql.Date
                oradorActualizado.setFechaAlta(java.sql.Date.valueOf(request.getParameter("fechaAlta")));

                oradoresDAO.actualizarOrador(oradorActualizado);
                response.sendRedirect("gestionOradores.jsp");
                break;
            case "eliminar":
                oradoresDAO.eliminarOrador(idOrador);
                response.sendRedirect("gestionOradores.jsp");
                break;
            default:
                response.sendRedirect("gestionOradores.jsp");
                break;
        }
    }
}
