import com.mysql.jdbc.Driver;

import java.sql.*;

public class JDBCLecture {

    public static void main(String[] args) throws SQLException {
        DriverManager.registerDriver(new Driver());
        Config config = new Config();
        Connection connection = DriverManager.getConnection(
                config.getAnotherUrl(),
                config.getUser(),
                config.getPassword()
        );

        Statement statement = connection.createStatement();

        ResultSet selectResults = statement.executeQuery("SELECT * FROM products");

        while(selectResults.next()) {
            System.out.println("Here's a product:");
            System.out.println("name: " + selectResults.getString("name"));
            System.out.println("price: $" + selectResults.getFloat("price") + "\n");
        }

        // Example: INSERTION of new record + return of ID that was generated

        String insertQuery = "INSERT INTO products (name, price) VALUES ('nailgun', 250)";

        Statement insertStatement = connection.createStatement();

        insertStatement.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);
        ResultSet insertResults = insertStatement.getGeneratedKeys();

        if (insertResults.next()) {
            System.out.println("Administrator: A new item has been created with  the id of: " + insertResults.getLong(1));
        }

    }
}
