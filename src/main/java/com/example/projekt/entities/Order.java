package com.example.projekt.entities;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Order", unique = true, nullable = false)
    private Long id;
    @NotNull(message = "Proszę wypełnić pole")
    @NotBlank
    @Size(message = "Liczba znaków musi mieścić sięw przedziale od 6 do 32 znaków",min = 6, max = 32)
    private String firstName;
    @NotNull(message = "Proszę wypełnić pole")
    @NotBlank
    @Size(message = "Liczba znaków musi mieścić sięw przedziale od 6 do 32 znaków",min = 6, max = 32)
    private String lastName;
    @NotNull(message = "Proszę wypełnić pole")
    @NotBlank
    @Size(message = "Liczba znaków musi mieścić sięw przedziale od 6 do 32 znaków",min = 1, max = 32)
    private String city;
    @NotNull(message = "Proszę wypełnić pole")
    @NotBlank
    @Size(min = 1, max = 32,message = "Liczba znaków musi mieścić sięw przedziale od 6 do 32 znaków")
    private String street;
    @NotBlank(message = "Proszę wypełnić pole")
    @Pattern(message = "Proszę wpisać prawidłowy numer telefonu", regexp = "^[0-9]{9}")
    private String phoneNumber;
    @NotNull(message = "Proszę wybrać produkt")
    @ManyToOne
    @JoinColumn(name = "ID_Product", nullable = false)
    private Product product;
    @Pattern(message = "Proszę podać prawidłowy kod", regexp = "^[0-9]{2}-[0-9]{3}$")
    private String zipCode;

    public Order(Long id, String firstName, String lastName, String city, String street, String phoneNumber, Product product, String zipCode) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.city = city;
        this.street = street;
        this.phoneNumber = phoneNumber;
        this.product = product;
        this.zipCode = zipCode;
    }

    public Order() {

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
