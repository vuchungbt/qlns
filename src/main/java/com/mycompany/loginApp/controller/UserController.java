/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.loginApp.controller;

import com.mycompany.loginApp.Service.IUserService;
import com.mycompany.loginApp.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Ajay
 */
@Controller
public class UserController {
    @Autowired
    IUserService userService;
    
    
    @RequestMapping(value="/users", method = RequestMethod.GET)
    public String getUserList(Model model){
        model.addAttribute("userList", userService.getAllUsers());
        System.err.println("err "+ userService.getAllUsers().size());
        return "users";
    }
    
    @RequestMapping(value="/registerUser", method=RequestMethod.GET)
    public String addUser(@ModelAttribute("user") User user){
        return "registerUser";
    }
    
    @RequestMapping(value="/registerUser", method=RequestMethod.POST)
    public String saveUser(@ModelAttribute("user") User user){
        userService.saveUser(user);
        return "redirect:registerUser?success=true";
    }
}
