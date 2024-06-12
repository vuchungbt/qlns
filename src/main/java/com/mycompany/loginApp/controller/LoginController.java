/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.loginApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Ajay
 */
@Controller
public class LoginController {

    @RequestMapping("/")
    public String redirectRoot() {
        return "redirect:/main";
    }
    
    @RequestMapping(value="/main", method=RequestMethod.GET)
    public String mainPage(Model model){
        String username = "ajay";
        model.addAttribute("username", username);
        return "main";
    }
    
    @RequestMapping(value = "/login", method=RequestMethod.GET)
    public String login(){
        return "login";
    }
    
//    @RequestMapping(value = "/connect/twitter")
//    public String connectTwitter(){
//        return "twitter";
//    }
}
