package com.example.projekt.readdto;

import java.time.LocalDate;

public class InstitutionReadDto {


    private String name;
    private LocalDate dateOrder;

    private String description;

    public InstitutionReadDto(String name,LocalDate dateOrder, String description) {

        this.name = name;
        this.dateOrder=dateOrder;
        this.description = description;
    }

    public LocalDate getDateOrder() {
        return dateOrder;
    }


    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }
}
