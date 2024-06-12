/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.loginApp.Service;

import com.mycompany.loginApp.entities.User;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author Ajay
 */
@Service
public interface IUserService {
    public List<User> getAllUsers();

    public void saveUser(User user);
    
}
