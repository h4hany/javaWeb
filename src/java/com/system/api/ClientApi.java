/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.api;

import com.system.models.Client;
import com.system.servecies.ClientServcies;
import java.net.URI;
import java.util.List;
import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import static javax.ws.rs.HttpMethod.POST;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriBuilder;
import javax.ws.rs.core.UriInfo;

/**
 *
 * @author hany
 */
@Path("/clients")

public class ClientApi {

    @PersistenceContext(unitName = "systemPU")
    private EntityManager em;

    @EJB
    ClientServcies studentS;

    @Context
    UriInfo sUriInfo;

    public ClientApi() {
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Client> listAll() {

        List<Client> s = studentS.getClients();
        return s;

    }
    
     @GET
    @Produces(MediaType.APPLICATION_JSON)
     @Path("{client_id}")
    public Client getClient(@PathParam("client_id") Integer clientId) {

        Client s = studentS.getOneClient(clientId);
        return s;

    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response addClient(Client s) {
       s = studentS.addStudent(s);
        UriBuilder cUriBuilder = sUriInfo.getAbsolutePathBuilder();
        URI cUri = cUriBuilder.path(String.valueOf(s.getId())).build();
        return Response.created(cUri).build();
    }
    @DELETE
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{client_id}")
    @Transactional 
    public Response deleteClient(@PathParam("client_id") Integer clientId) {
      long id=new Long(clientId);
        Client clientRemove= em.find(Client.class,id );
        System.out.println(clientRemove);
        em.remove(clientRemove);
        
        return Response.noContent().build();
    }
}
