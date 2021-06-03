package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch(SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public User findByUsername(String username) {
        Statement statement;
        try {
            statement = connection.createStatement();
            ResultSet results = statement.executeQuery("SELECT * FROM users");
            return createUsersFromResults(results);
        } catch(SQLException e) {
            throw new RuntimeException("Error retrieving all users.");
        }

    }

    private User createUsersFromResults(ResultSet results) throws SQLException {
        User user = new User();
        while (results.next()) {
            user = new User(
                    results.getLong("id"),
                    results.getString("username"),
                    results.getString("email"),
                    results.getString("password")
            );
        }
        return user;
    }

    @Override
    public Long insert(User user) {
        try {
            PreparedStatement statement = connection.prepareStatement(createInsertQuery(user), Statement.RETURN_GENERATED_KEYS);

            statement.setString(2, user.getUsername());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPassword());

            statement.executeUpdate();

            ResultSet results = statement.getGeneratedKeys();
            results.next();
            return results.getLong(1);
        } catch(SQLException e) {
            throw new RuntimeException("Error creating a new user.", e);
        }
    }

    private String createInsertQuery(User user) {
        return "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
    }
}
