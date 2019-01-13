package com.wonwoo.controllers;

import com.wonwoo.DAOs.userDAO;
import com.wonwoo.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class userController {
    userDAO dao;

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
        /*
        DONE: parse passed in parameters from request -> use form/modelattribute tag in jsp
        TODO: create User class; this is model
        TODO: password hashing -> should be done in model
        TODO: communicate with database -> create DAO class
        DONE: attach message and redirect to login
         */
        if(result.hasErrors()) {
            return "error";
        }
        System.out.println(user.getUserID());
        System.out.println(user.getUsername());
        System.out.println(user.getEmail());
        System.out.println(user.getGender());
        System.out.println(user.getPassword());
        System.out.println(user.getSalt());

        attributes.addFlashAttribute("message", "Signup Complete!");
        return "redirect:login";
    }
}
