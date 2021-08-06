package com.example.projekt.repository;

import com.example.projekt.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRep extends JpaRepository<User,Long> {
}
