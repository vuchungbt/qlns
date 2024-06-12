/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.loginApp.dao;

import com.mycompany.loginApp.entities.Role;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Ajay
 * 
 */

@Transactional
public class RoleDao{
    @Autowired
    SessionFactory sessionFactory;
    
    public void save(Role role){
        sessionFactory.getCurrentSession().save(role);
    }

    public Role findByName(String roleName) {
        Query query = sessionFactory.getCurrentSession().createQuery("from Role where name =:roleName");
        query.setParameter("roleName", roleName);
        return (Role)query.list().get(0);
    }
}
