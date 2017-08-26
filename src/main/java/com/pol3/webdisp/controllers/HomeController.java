package com.pol3.webdisp.controllers;

import com.pol3.webdisp.dao.DogDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    private DogDAO dogDAO;

    @GetMapping("/")
    public String getHome(Model model) {
        model.addAttribute("name", "John");
        model.addAttribute("dogs", dogDAO.list());
        return "index";
    }
}
