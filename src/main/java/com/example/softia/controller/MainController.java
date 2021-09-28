package com.example.softia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

//@Controller
public class MainController {

    public String showForm(){
        return "exercice_form";
    }
}
