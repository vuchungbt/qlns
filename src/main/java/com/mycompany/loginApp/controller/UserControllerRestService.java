/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.loginApp.controller;

import com.mycompany.loginApp.Service.IUserService;
import com.mycompany.loginApp.entities.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Ajay
 */
@RestController
public class UserControllerRestService {
    @Autowired
    IUserService userService;
    
    
    @RequestMapping(value="/userList", method = RequestMethod.GET)
    public List<User> getUserList(){
        List<User> users = userService.getAllUsers();
        System.err.println("users"+users);
        //System.err.println("err "+ userService.getAllUsers().size());
        return users;
    }
    
//    @RequestMapping(value="/registerUser", method=RequestMethod.GET)
//    public String addUser(@ModelAttribute("user") User user){
//        return "registerUser";
//    }
//    
//    @RequestMapping(value="/registerUser", method=RequestMethod.POST)
//    public String saveUser(@ModelAttribute("user") User user){
//        userService.saveUser(user);
//        return "redirect:registerUser?success=true";
//    }
}
