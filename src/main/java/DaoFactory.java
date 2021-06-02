import java.io.IOException;

public class DaoFactory {
    private static Products productsDao;

    public static Products getProductsDao() throws IOException {
        if (productsDao == null) {
            productsDao = new MySqlProductsDao(); //we can swap this implementation [List to CSV to MySQL to. . . .]
        }
        return productsDao;
    }


}