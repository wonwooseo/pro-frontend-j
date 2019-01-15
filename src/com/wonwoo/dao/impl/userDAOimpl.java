package com.wonwoo.dao.impl;

import com.wonwoo.dao.userDAO;
import com.wonwoo.models.User;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

public class userDAOimpl implements userDAO {
    private JdbcTemplate template;

    public void setDataSource(DataSource ds) {
        template = new JdbcTemplate(ds);
    }

    public int insert(User user) {
        String sql = "INSERT INTO User(username, email, gender, password, salt) VALUES(?, ?, ?, ?, ?)";
        return template.update(sql, user.getUsername(), user.getEmail(), user.getGender(),
                user.getPassword(), user.getSalt());
    }

    public Map<String, String> loginQueryByName(String username, String password) {
        try {
            String sql = "SELECT * FROM User WHERE username = ?";
            Map<?, ?> rs = template.queryForMap(sql, username);
            String hashedPassword = User.hashPassword(password, (String)rs.get("salt"));
            if(hashedPassword.equals(rs.get("password"))) {
                // Build new map without password info
                Map<String, String> result = new HashMap<>();
                result.put("username", username);
                result.put("email", (String)rs.get("email"));
                result.put("history", (String)rs.get("history"));
                result.put("favorites", (String)rs.get("favorites"));
                return result;
            }
            else {
                return null;
            }
        }
        catch(DataAccessException e) {
            System.out.println("SQL Exception caught: no query result");
            return null;
        }
    }
}
