package servlet;

import database.EntityDao;
import model.Owner;
import model.Pet;
import model.Race;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet("/pet/form")
public class PetAddServlet extends HttpServlet {
    private final EntityDao<Owner> ownerEntityDao = new EntityDao<>();
    private final EntityDao<Pet> petEntityDao = new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ownerIdString = req.getParameter("ownerId");
        if (ownerIdString != null) {
            req.setAttribute("ownerId", ownerIdString);
        }

        List<Owner> ownerList = ownerEntityDao.findAll(Owner.class);
        req.setAttribute("all_owners", ownerList);

        Race[] allRaces = Race.values();
        req.setAttribute("all_races", allRaces);

        req.getRequestDispatcher("/pet_form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long ownerId = Long.valueOf(req.getParameter("ownerIdValue"));
        Optional<Owner> ownerOptional = ownerEntityDao.findById(ownerId, Owner.class);
        if (ownerOptional.isPresent()) {
            Owner owner = ownerOptional.get();

            Pet pet = Pet.builder()
                    .race(Race.valueOf(req.getParameter("raceValue")))
                    .owner(owner)
                    .build();

            petEntityDao.saveOrUpdate(pet);
        }
        resp.sendRedirect(req.getContextPath() + "/owner/details?id=" + ownerId);
    }
}
