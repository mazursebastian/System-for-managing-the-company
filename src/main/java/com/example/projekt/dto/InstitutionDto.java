package com.example.projekt.dto;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

public class InstitutionDto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    @Column(name = "name_institution", nullable = false, length = 100)
    private String name;
    @NotBlank
    @Column(name = "institution_description", nullable = false, length = 1000)
    private String description;

    public InstitutionDto(Long id, String name, String description) {
        this.id = id;
        this.name = name;
        this.description = description;
    }

    public InstitutionDto() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
