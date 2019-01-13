package com.wonwoo.models;

import org.apache.commons.codec.digest.DigestUtils;

import java.security.SecureRandom;
import java.util.Base64;

public class User {
    private int userID;
    private String username;
    private String email;
    private String gender;
    private String password;
    private String salt;
    private String history;
    private String favorites;

    public int getUserID() {
        return userID;
    }

    public void setUserID(int input) {
        userID = input;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String input) {
        username = input;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String input) {
        // email validation?
        email = input;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String input) {
        gender = input;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String input) {
        // creating salt
        SecureRandom rng = new SecureRandom();
        byte[] random = new byte[48];
        rng.nextBytes(random);
        this.salt = Base64.getEncoder().encodeToString(random);
        // password hashing
        this.password = DigestUtils.sha256Hex(input + this.salt);
    }

    public String getSalt() {
        return salt;
    }

    public String getHistory() {
        return history;
    }

    public void setHistory(String input) {
        history = input;
    }

    public String getFavorites() {
        return favorites;
    }

    public void setFavorites(String input) {
        favorites = input;
    }
}
