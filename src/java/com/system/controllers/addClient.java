/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.controllers;

import com.system.servecies.ClientServcies;
import com.system.models.Gender;
import com.system.models.Client;
import com.system.models.StudentTest;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hany
 */
@WebServlet(name = "addClient", urlPatterns = {"/addClient"})
public class addClient extends HttpServlet {

    @EJB
    ClientServcies studentS;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addStudent</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addStudent at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
      //  RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/signup.jsp");

       // view.forward(request, response);
          //sObj.setId("1");
         Client sObj = new Client();

        sObj.setFirstName("aa");
        sObj.setLastName("bb");
        sObj.setAddress("cc");
        sObj.setUserName("dd");
        sObj.setCountry("ss");
        sObj.setGender(Gender.Male);
        sObj.setPassword("aaa");
        sObj.setEmail("xxx");
        System.out.println(sObj);
        studentS.addStudent(sObj);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private String FirstName, LastName, Email, Address, Country, UserName, Password;
    private Gender gender;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
       /* Student sObj = new Student();
        FirstName = (String) request.getParameter("fname");
        LastName = (String) request.getParameter("lname");
        Email = (String) request.getParameter("email");
        Address = (String) request.getParameter("address");
        Country = (String) request.getParameter("country");
        UserName = (String) request.getParameter("uname");
        Password = (String) request.getParameter("password");
        gender =  ((String) request.getParameter("gender")).equals( "male" )? Gender.Male:Gender.Female;
        saveStudentObj(sObj);
        System.out.println(sObj);
       studentS.addStudent(sObj);*/
    // request.setAttribute("student", sObj);
    //  RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/listStudent.jsp");

      //  view.forward(request, response);

    }

    public void saveStudentObj(Client sObj) {
         //sObj.setId("1");
        sObj.setFirstName(FirstName);
        sObj.setLastName(LastName);
        sObj.setAddress(Address);
        sObj.setUserName(UserName);
        sObj.setCountry(Country);
        sObj.setGender(gender);
        sObj.setPassword(Password);
        sObj.setEmail(Email);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
