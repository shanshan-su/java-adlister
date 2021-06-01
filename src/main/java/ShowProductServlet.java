import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowProductServlet", urlPatterns = "/products")
public class ShowProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // instantiate from getProductsDao method in DaoFactory to get a DAO object
        Products productsDao = DaoFactory.getProductsDao();

        // Let's get all the products
        List<Product> products = productsDao.all();

        // Pass the data to the jsp
        request.setAttribute("products", products);
        request.getRequestDispatcher("/products/index.jsp").forward(request, response);
    }
}
