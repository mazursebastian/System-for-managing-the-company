package com.example.projekt.dto;



import com.example.projekt.entities.Product;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.time.LocalDate;

import java.util.List;

public class OrderDto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private String firstName;
    @NotBlank
    private String lastName;
    @NotBlank
    private String city;
    @NotBlank
    private String street;
    @NotBlank
    @Pattern(message = "Proszę wpisać prawidłowy numer telefonu", regexp = "^[0-9]{9}")
    private String phoneNumber;

    @ManyToOne
    @JoinColumn(name = "ID_Product", nullable = false)
    private Product product;
    @Pattern(message = "Proszę podać prawidłowy kod", regexp = "^[0-9]{2}-[0-9]{3}$")
    private String zipCode;

    public OrderDto(Long id, String firstName, String lastName, String city, String street, String phoneNumber, Product product, String zipCode) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.city = city;
        this.street = street;
        this.phoneNumber = phoneNumber;
        this.product = product;
        this.zipCode = zipCode;
    }

    public OrderDto() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }


    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
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
}
