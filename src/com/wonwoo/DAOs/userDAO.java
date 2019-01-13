package com.wonwoo.DAOs;

import com.wonwoo.models.User;
import org.springframework.jdbc.core.JdbcTemplate;

public class userDAO {
    JdbcTemplate template;

    public int insert(User user) {
        String sql = "INSERT INTO User(username, email, gender, password, salt) VALUES(?, ?, ?, ?, ?)";
        return template.update(sql, user.getUsername(), user.getEmail(), user.getGender(),
                user.getPassword(), user.getSalt());
    }
}
