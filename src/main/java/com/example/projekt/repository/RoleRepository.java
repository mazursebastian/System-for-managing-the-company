package com.example.projekt.repository;

import com.example.projekt.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface RoleRepository extends JpaRepository<Role, Long> {
    @Query("SELECT r from Role  r where r.name=?1")
    Role findByName(String name);
}