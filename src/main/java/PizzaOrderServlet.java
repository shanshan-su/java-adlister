import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/pizzaOrder/pizzaOrder.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("crustType = " + request.getParameter("crustType"));
        System.out.println("size = " + request.getParameter("size"));
        System.out.println("cheeseAmount = " + request.getParameter("cheeseAmount"));
        System.out.println("sauceType = " + request.getParameter("sauceType"));
        System.out.println("sauceAmount = " + request.getParameter("sauceAmount"));

        String[] toppings = request.getParameterValues("toppings");
        System.out.print("toppings = ");
        for (String topping : toppings) {
            System.out.printf("%s ", topping);
        }
        System.out.println();

        System.out.println("address = " + request.getParameter("address"));
    }
}
