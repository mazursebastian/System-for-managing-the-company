package com.example.projekt.repository;

import com.example.projekt.entities.Institution;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface InstitutionRep extends JpaRepository<Institution, Long> {
}
