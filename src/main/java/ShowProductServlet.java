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

        //"Hey Servlet, go instantiate from that getProductsDao method I set up!" == get a DAO object
        Products productsDao = DaoFactory.getProductsDao();
        //Let's get all the products

        List<Product> showProducts = productsDao.all();

        //Send all the products up to the JSP!
        request.setAttribute("products", showProducts);
        request.getRequestDispatcher("/WEB-INF/product/productIndex.jsp").forward(request, response);

    }



}
