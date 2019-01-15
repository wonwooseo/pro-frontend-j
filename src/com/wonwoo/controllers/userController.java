package com.wonwoo.controllers;

import com.wonwoo.dao.userDAO;
import com.wonwoo.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Map;

@Controller
public class userController {
    @Autowired
    private userDAO dao;

    @RequestMapping("/login")
    public String showLogin() {
        return "login";
    }

    @RequestMapping(value = "/login_query", method=RequestMethod.POST)
    public String loginQuery(@RequestBody MultiValueMap<String, String> postmap, RedirectAttributes attributes, ModelMap model) {
        /*
         * TODO: remember me option (cookies?)
         * TODO: login with email
         * TODO: detailed error message?
         */
        String username = postmap.getFirst("username");
        String password = postmap.getFirst("password");
        boolean remember = postmap.getFirst("remember") != null;
        Map<String, String> result = dao.loginQueryByName(username, password);
        if(result == null) {
            attributes.addFlashAttribute("message", "Login Failed!");
            return "redirect:login";
        }
        model.addAllAttributes(result);
        return "profile";
    }

    @RequestMapping("/signup")
    public String showSignup(ModelMap model) {
        model.addAttribute("user", new User());
        return "signup";
    }

    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
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
