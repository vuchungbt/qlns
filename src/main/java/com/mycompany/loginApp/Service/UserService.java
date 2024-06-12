/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.loginApp.Service;

import com.mycompany.loginApp.dao.RoleDao;
import com.mycompany.loginApp.dao.UserDao;
import com.mycompany.loginApp.entities.Role;
import com.mycompany.loginApp.entities.User;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Ajay
 */
@Service
@Transactional
public class UserService implements IUserService {
    
    @Autowired
    UserDao userDao;
    
    @Autowired
    RoleDao roleDao;
    
    @Override
    public List<User> getAllUsers() {
        return userDao.getAll();
    }
    
    @Override
    public void saveUser(User user) {
        BCryptPasswordEncoder encode = new BCryptPasswordEncoder();
        user.setPassword(encode.encode(user.getPassword()));
        List<Role> roles = new ArrayList<Role>();
        roles.add(roleDao.findByName("ROLE_USER"));
        user.setRoles(roles);
        userDao.save(user);
    }
    
}
