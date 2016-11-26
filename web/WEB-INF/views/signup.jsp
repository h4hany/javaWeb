<%-- 
    Document   : signup
    Created on : Nov 19, 2016, 5:50:57 PM
    Author     : hany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title></title><link rel="stylesheet" href="resources/css/bootstrap.css">
        <title></title><link rel="stylesheet" href="resources/css/style.css">

        <script src="resources/js/jquery-1.11.2.js"></script>

        <script src="resources/js/bootstrap.js"></script>


    </head>
    <body>
        <div class='container text-center'>

            <div class='col-lg-12 well'>
                <h1> Main Header </h1>
            </div>
            <div class='col-lg-12 text-left'>			
                <h1>Register</h1>
                <h5></h5>

                <form role="form" method="post" action="addStudent">

                    <div class="form-group row">
                        <label class="col-lg-2" for="fname">First Name:</label>
                        <div class="col-lg-10" >
                            <input  type="text" class="form-control col-lg-9" id="fname" name="fname"></div>
                    </div>

                    <div class="form-group row">

                        <label class="col-lg-2" for="lname">Last Name:</label>
                        <div class="col-lg-10" >
                            <input  type="text" class="form-control col-lg-9"  id="lname" name="lname"> </div>
                    </div>





                    <div class="form-group row">
                        <label class="col-lg-2" for="adress">Email:</label>
                        <div class="col-lg-10" >
                            <input  type="text" class="form-control col-lg-9"  id="email" name="email"> </div>

                    </div>

                    <div class="form-group row">
                        <label class="col-lg-2" for="adress">Address:</label>
                        <div class="col-lg-10" >
                            <textarea name="address" class="form-control col-lg-9" id="address" ></textarea> </div>
                    </div>



                    <div class="form-group row" >
                        <label class="col-lg-2" for="country" >Country:</label>
                        <div class="col-lg-10" >
                            <select class="form-control col-lg-9" name="country" >
                                <option value="egypt">Egypt</option>
                                <option value="usa">USA</option>
                                <option value="france">France</option>
                            </select> 
                        </div>
                    </div>



                    <div class="form-group row">
                        <label class="col-lg-2" for="gender" >Gender:</label>
                        <div class="col-lg-10 radio" >

                            <label class="radio-inline"><input type="radio" name="gender" value="Male">Male</label>
                            <label class="radio-inline"><input type="radio" name="gender" value="Female">Female</label>
                        </div>
                    </div>





                    <div class="form-group row">
                        <label class="col-lg-2" for="uname">User Name:</label>
                        <div class="col-lg-10" >
                            <input  type="text" class="form-control col-lg-9" id="uname" name="uname"></div>
                    </div>

                    <div class="form-group row">

                        <label class="col-lg-2" for="password">Password:</label>
                        <div class="col-lg-10" >
                            <input  type="password" class="form-control col-lg-9"  id="password" name="password"> </div>
                    </div>



                    <div class="form-group row">


                        <div class="form-group row text-center">
                            <div class="col-lg-5">

                                <input type="submit" class="btn-lg btn-primary" value="Submit"></div>

                            <div class="col-lg-3">

                                <button type="reset" class="btn-lg btn-danger">Reset</button></div>
                        </div>
                </form>



            </div>

            <div class='col-lg-12 well'>
                <h1> Main Footer </h1>
            </div>

        </div>

    </body>

</html>
