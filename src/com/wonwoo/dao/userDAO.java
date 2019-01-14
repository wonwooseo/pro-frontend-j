package com.wonwoo.dao;

import com.wonwoo.models.User;

public interface userDAO {

    int insert(User user);
    int findByName(String username);
    int findByEmail(String email);
}
