package com.example.projekt.readdto;

public class InstitutionReadDto {


    private String name;


    private String description;

    public InstitutionReadDto(String name, String description) {

        this.name = name;
        this.description = description;
    }


    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }
}
