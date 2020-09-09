package servlet;

import database.EntityDao;
import model.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;
@WebServlet("/pet/delete")
public class PetDeleteServlet extends HttpServlet {
    private final EntityDao<Pet> petEntityDao = new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long petId = Long.parseLong(req.getParameter("id"));

        Optional<Pet> petOptional = petEntityDao.findById(petId, Pet.class);
        if (petOptional.isPresent()) {
            Pet pet = petOptional.get();
            petEntityDao.delete(pet);

            resp.sendRedirect(req.getContextPath() + "/owner/details?id=" + pet.getOwner().getId());
        } else {
            resp.sendRedirect(req.getContextPath() + "/owner");
        }
    }
}
