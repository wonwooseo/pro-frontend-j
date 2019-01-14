package com.wonwoo.controllers;

import com.wonwoo.dao.userDAO;
import com.wonwoo.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class userController {
    @Autowired
    private userDAO dao;

    @RequestMapping("/login")
    public String showLogin(ModelMap model) {
        // model holds message
        return "login";
    }

    @RequestMapping("/signup")
    public String showSignup(ModelMap model) {
        model.addAttribute("user", new User());
        return "signup";
    }

    @RequestMapping(value="/createUser", method = RequestMethod.POST)
    public String createUser(@ModelAttribute("user")User user, BindingResult result, RedirectAttributes attributes) {
        if(result.hasErrors()) {
            return "error";
        }
        // TODO: used username check
        dao.insert(user);
        attributes.addFlashAttribute("message", "Signup Complete!");
        return "redirect:login";
    }
}
