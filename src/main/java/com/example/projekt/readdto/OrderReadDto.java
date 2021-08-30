package com.example.projekt.readdto;

import com.example.projekt.entities.Product;

import javax.validation.constraints.Pattern;
import java.time.LocalDate;
import java.util.List;

public class OrderReadDto {
 private String firstName;
 private String lastName;

    private String city;

    private String street;


    private String phoneNumber;

    private String institution;

    private List<Product> products;

    private String zipCode;


    public OrderReadDto(String firstName, String lastName, String city, String street, String phoneNumber, String institution, List<Product> products, String zipCode) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.city = city;
        this.street = street;
        this.phoneNumber = phoneNumber;
        this.institution = institution;
        this.products = products;
        this.zipCode = zipCode;
    }

    public String getCity() {
        return city;
    }

    public String getStreet() {
        return street;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getInstitution() {
        return institution;
    }

    public List<Product> getProducts() {
        return products;
    }



    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setInstitution(String institution) {
        this.institution = institution;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public String getZipCode() {
        return zipCode;
    }
}
