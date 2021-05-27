import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello") // metadata to go along with out servlet
public class HelloWorldServlet extends HttpServlet { // defining the class name / extending from HttpServlet
    // Put doGet and doPost methods in here
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        response.getWriter().println("<label>First name</label>");
        response.getWriter().println("<input type=\"text\" id=\"name\">");
        String name = request.getParameter("name");
        if (name == null) {
            response.getWriter().println("<h1>Hello World!</h1>");
        } else {
            response.getWriter().printf("<h1>Hello, %s!</h1>\n", name);
        }


    }
}
