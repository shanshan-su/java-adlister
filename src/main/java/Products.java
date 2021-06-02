import java.io.IOException;
import java.util.List;

public interface Products {

    List<Product> all() throws IOException; // get all products
    void insert(Product product) throws IOException; //add one new product


}