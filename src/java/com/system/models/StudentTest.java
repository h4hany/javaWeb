/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.system.models;

/**
 *
 * @author hany
 */
public class StudentTest {
    
    

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public String getUserName() {
        return UserName;
    }

    @Override
    public String toString() {
        return "StudentTest{" + "id=" + id + ", FirstName=" + FirstName + ", LastName=" + LastName + ", Email=" + Email + ", Address=" + Address + ", Country=" + Country + ", UserName=" + UserName + ", Password=" + Password + ", gender=" + gender + '}';
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }
    private String id,FirstName,LastName,Email,Address,Country,UserName,Password;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    private Gender gender;
}
