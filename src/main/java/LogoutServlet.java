import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LogoutServlet", urlPatterns = "/logout")
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) { // user has not logged in
            String message = "Please login first.";

            request.setAttribute("message", message);
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        }

//        String user = (String) session.getAttribute("user");
//        if (user.equals("admin")) {
//            session.invalidate();
//        }

        if(session.getAttribute("user") == "admin") {
            session.invalidate();
            response.sendRedirect("/login");
        }


    }
}
