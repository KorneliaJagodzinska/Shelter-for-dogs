package servlet;

import database.EntityDao;
import model.Owner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/owner")
public class OwnerListServlet extends HttpServlet {
    private final EntityDao<Owner> ownerEntityDao = new EntityDao<>();

    // metoda której celem/zadaniem jest zwrócić użytkownikowi stronę html z listą studentów
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // pobierz listę wlascicieli z bazy danych
        List<Owner> ownerList = ownerEntityDao.findAll(Owner.class);

        // przekazanie kolekcji/listy wlascicieli do widoku (pliku jsp) (do wyświetlenia)
        req.setAttribute("jakastamsobie_lista", ownerList);

        // wyświetl widok
        req.getRequestDispatcher("/owner_list.jsp").forward(req, resp);
    }
}
