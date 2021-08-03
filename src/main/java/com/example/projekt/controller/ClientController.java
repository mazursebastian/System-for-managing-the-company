package com.example.projekt.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;

@Controller
public class ClientController {
    public String homePageClient(){
        return "/home-page-client";
    }
}
