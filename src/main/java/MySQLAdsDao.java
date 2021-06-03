import com.mysql.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );} catch (SQLException e) {
            throw new RuntimeException("Error connecting to SQL database!", e);
        }

    }


    @Override
    public List<Ad> all() {
        try {
            Statement statement = connection.createStatement();
            ResultSet results = statement.executeQuery("SELECT * FROM ads");
            return createAddsFromResults(results);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    private List<Ad> createAddsFromResults(ResultSet results) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (results.next()) {
            ads.add(extractAd(results));
        }
        return ads;
    }

    private Ad extractAd(ResultSet results) throws SQLException {
        return new Ad(
                results.getLong("id"),
                results.getLong("user_id"),
                results.getString("title"),
                results.getString("description")
        );
    }


    @Override
    public Long insert(Ad ad) {
        try {
            Statement statement = connection.createStatement();
            String query = "INSERT INTO ads(user_id, title, description) VALUES ("
                    + ad.getUserId() + ", "
                    + "'" + ad.getTitle() + "', "
                    + "'" + ad.getDescription() + "'"
                    + ")";
            System.out.println(query);
            statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet results = statement.getGeneratedKeys();
            results.next();
            return results.getLong(1);


        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }
}
