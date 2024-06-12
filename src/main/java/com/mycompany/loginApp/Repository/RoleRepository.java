/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.loginApp.Repository;

import com.mycompany.loginApp.entities.Role;
import java.io.Serializable;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Ajay
 */
public interface RoleRepository extends JpaRepository<Role, Integer>{
    
}
