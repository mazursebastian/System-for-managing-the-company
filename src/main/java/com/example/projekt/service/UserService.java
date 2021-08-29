package com.example.projekt.service;

import com.example.projekt.entities.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
