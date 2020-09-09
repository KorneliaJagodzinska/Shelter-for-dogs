package servlet;

import database.EntityDao;
import model.Owner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/student/form")
public class OwnerAddServlet extends HttpServlet {
    private final EntityDao<Owner> ownerEntityDao = new EntityDao<>();

    // metoda której celem/zadaniem jest zwrócić użytkownikowi formularz
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/owner_form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Owner owner = Owner.builder()
                .birthDate(LocalDate.parse(req.getParameter("birthDateValue")))
                .lastName(req.getParameter("lastNameValue"))
                .firstName(req.getParameter("firstNameValue"))
                .age(Integer.parseInt(req.getParameter("ageValue")))
                .averageOfPetsAge(Double.parseDouble(req.getParameter("averageOfPetsAgeValue")))
                .amountOfPets(Integer.parseInt(req.getParameter("amountOfPetsValue")))
                .build();

        ownerEntityDao.saveOrUpdate(owner);

        // na koniec robimy redirect
        resp.sendRedirect(req.getContextPath() + "/owner/form");
    }
}
