package com.example.projekt.readdto;

public class UserReadDto {
    private String email;
    private String login;

    private String firstName;

    private String lastName;

    public UserReadDto(String email, String login, String firstName, String lastName) {
        this.email = email;
        this.login = login;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public String getLogin() {
        return login;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }
}
