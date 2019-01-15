package com.wonwoo.dao;

import com.wonwoo.models.User;

import java.util.Map;

public interface userDAO {

    int insert(User user);
    Map<String, String> loginQueryByName(String username, String password);
}
