<%-- 
    Document   : password
    Created on : Apr 27, 2018, 11:53:01 PM
    Author     : Simran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>change password</title>
        <style>
            .form{
  
  height: 50%;
   padding-top: 300px;
  margin-left: 750px;
padding-bottom: 200px;
  float:left;
}
#label2{
    margin-right:25px;
}
#label3{
    margin-right:62px;
}
#label1{
    margin-right:62px;
}
 
.section1 p{
    text-align: center;
}

#button1{
    background-color:white;
    border: none;
    font-size: 12px;
    font-family: 'montserrat', sans-serif;
    text-transform: uppercase;
    font-weight: bold;
    line-height: 40px;
    width: 150px;
    border: 3px solid black;
}

        </style>
    </head>
    <body>
        <div class='form'>
    <center>
        <form action='changepass.jsp' method="get">
            <label> ENTER YOUR USERNAME:</label><input type='text' name='user'><br><br>
             <label id="label3">OLD PASSWORD:</label><input type='text' name='oldpass'><br><br>
            <label id="label1">NEW PASSWORD:</label><input type='password' name='newpass'><br><br>
            <label id="label2"> CONFIRM PASSWORD:  </label> <input type='password' name='confirm'><br><br>
            <input type='submit' name='submit'value="CHANGE" id='button1'>
        </form>
           
    </center>
        </div>
       
    </body>
</html>
