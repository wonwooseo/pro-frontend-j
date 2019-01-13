package com.wonwoo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/index")
public class indexController {
    @RequestMapping(method = RequestMethod.GET)
    public String showIndex() {
        return "index";
    }
}
