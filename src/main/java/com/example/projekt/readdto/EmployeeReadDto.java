package com.example.projekt.readdto;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

public class EmployeeReadDto {

    private String firstName;

    private String lastName;

    private String street;


    private String phoneNumber;

    private String email;

    public String position;

    public Double payment;

    public EmployeeReadDto(String firstName, String lastName, String street, String phoneNumber, String email, String position, Double payment) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.street = street;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.position = position;
        this.payment = payment;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getStreet() {
        return street;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public String getPosition() {
        return position;
    }

    public Double getPayment() {
        return payment;
    }

}
