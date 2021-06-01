public class DaoFactory {
    private static Products productsDao;

    public static Products getProductsDao() {
        if (productsDao == null) {
            productsDao = new ListProducts(); // we can swap this implementation [List to CSV to MySQL to ....]
        }
        return productsDao;
    }
}
