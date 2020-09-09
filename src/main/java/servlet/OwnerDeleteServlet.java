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
@WebServlet("/owner/delete")
public class OwnerDeleteServlet extends HttpServlet {
    private final EntityDao<Owner> ownerEntityDao = new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long ownerId = Long.parseLong(req.getParameter("id"));

        Optional<Owner> ownerOptional = ownerEntityDao.findById(ownerId, Owner.class);
        if (ownerOptional.isPresent()) {
            Owner owner = ownerOptional.get();
            ownerEntityDao.delete(owner);
        }
        resp.sendRedirect(req.getContextPath() + "/owner");
    }
}
