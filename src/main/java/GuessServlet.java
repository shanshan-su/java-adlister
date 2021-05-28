import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/guessGame/guessGame.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int randomNumber = (int)(Math.random() * 3) + 1;

        int number = Integer.parseInt(request.getParameter("number"));
        System.out.println(number);

        if (number == randomNumber) {
            response.sendRedirect("/correct");
        } else {
            response.sendRedirect("/incorrect");
        }



    }
}
