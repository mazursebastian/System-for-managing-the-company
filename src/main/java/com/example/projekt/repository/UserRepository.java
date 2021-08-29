package com.example.projekt.repository;

import com.example.projekt.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Long> {
    @Query("SELECT u from User  u where u.username=?1")

    User findByUsername(String username);
}