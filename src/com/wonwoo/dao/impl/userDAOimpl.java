package com.wonwoo.dao.impl;

import com.wonwoo.dao.userDAO;
import com.wonwoo.models.User;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

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

    public int findByName(String username) {
        return 0;
    }

    public int findByEmail(String email) {
        return 0;
    }
}
