package com.wonwoo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;

@Controller
@RequestMapping("/signup")
public class signupController {
    @RequestMapping(method = RequestMethod.GET)
    public String showIndex(ModelMap model) {
        model.addAttribute("message", "Hello World!");
        return "signup";
    }
}
