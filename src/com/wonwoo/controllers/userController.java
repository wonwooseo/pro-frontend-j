package com.wonwoo.controllers;

import com.wonwoo.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class userController {
    @RequestMapping("/login")
    public String showLogin(ModelMap model) {

        return "login";
    }

    @RequestMapping("/signup")
    public String showSignup(ModelMap model) {
        model.addAttribute("user", new User());
        return "signup";
    }

    @RequestMapping(value="/createUser", method = RequestMethod.POST)
    public ModelAndView createUser(@ModelAttribute("user")User user, ModelMap model) {
        /*
        TODO: parse passed in parameters from request -> use form/modelattribute tag in jsp
        TODO: create User class; this is model
        TODO: password hashing
        TODO: communicate with database; add new row in Users table
        TODO: attach message and redirect to login
         */
        System.out.println(user.getUserID());
        System.out.println(user.getUsername());
        System.out.println(user.getEmail());
        System.out.println(user.getGender());
        model.addAttribute("message", "Account Created!");
        return new ModelAndView("redirect:/login", model);
    }
}
