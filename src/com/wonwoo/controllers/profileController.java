package com.wonwoo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class profileController {
    @RequestMapping(value="/profile")
    public String showProfile() {
        return "profile";
    }
}
