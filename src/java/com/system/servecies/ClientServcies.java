/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.servecies;

import com.system.models.Client;
import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author hany
 */
@Stateless
@LocalBean
public class ClientServcies {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    public ClientServcies() {
    }
    @PersistenceContext(unitName = "systemPU")
    private EntityManager em;

    public Client addStudent(Client s) {
        em.persist(s);
        return s;
    }

    public List<Client> getClients() {

        TypedQuery<Client> sQuery = em.createQuery("select s from Client s ", Client.class);
        List<Client> sList = sQuery.getResultList();
        return sList;
    }

    public Client getOneClient(Integer client_id) {

        CriteriaBuilder builder = em.getCriteriaBuilder();
        CriteriaQuery<Client> cqClient = builder.createQuery(Client.class);

        Root<Client> rClient = cqClient.from(Client.class);
        cqClient.select(rClient).where(builder.equal(rClient.get("id").as(Integer.class), client_id));
        TypedQuery<Client> sQuery = em.createQuery(cqClient);
        Client c = sQuery.getSingleResult();
        return c;

    }
}
