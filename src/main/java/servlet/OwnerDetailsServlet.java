package servlet;

import database.EntityDao;
import model.Owner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

@WebServlet
public class OwnerDetailsServlet extends HttpServlet {
    private final EntityDao<Owner> ownerEntityDao = new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // identyfikator który odbieramy z listy studentów
        String ownerIdString = req.getParameter("id");
        Long ownerId = Long.parseLong(ownerIdString);

        // po dokonaniu parsowania ze String'a na Long'a szukamy studenta w bazie
        Optional<Owner> ownerOptional = ownerEntityDao.findById(ownerId, Owner.class);
        if (ownerOptional.isPresent()) {
            Owner owner = ownerOptional.get(); // po odnalezieniu studenta

            req.setAttribute("owner", owner);   // przekazujemy go do widoku poprzez atrybut

            // wyświetl widok
            req.getRequestDispatcher("/owner_details.jsp").forward(req, resp);
        } else {
            // jeśli nie udało się odnaleźć studenta, to wróć do listy studentów
            resp.sendRedirect(req.getContextPath() + "/owner");
        }
    }
}
