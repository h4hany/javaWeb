/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.api;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.ApplicationPath;

/**
 *
 * @author hany
 */
@ApplicationPath("/rest")  
public class API extends javax.ws.rs.core.Application{
    
    
    @PersistenceContext(unitName = "systemPU")
    private EntityManager em;
     
    
}
