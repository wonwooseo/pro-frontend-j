package com.wonwoo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;

@Controller
@RequestMapping("/login")
public class loginController {
    @RequestMapping(method = RequestMethod.GET)
    public String showLogin(ModelMap model) {
        model.addAttribute("message", "Hello World!");
        return "login";
    }
}
