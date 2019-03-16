<%-- 
    Document   : search
    Created on : Apr 26, 2018, 3:48:19 PM
    Author     : Simran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SEARCHING DONOR</title>
         <link rel= "stylesheet" type="text/css"  href="style2.css">
    </head>
    <body>
        
        <section class="class1">
            <center>
                
        <h3>REQUIRE DONOR?</h3>
        <p>(Fill the following details)</p>
        
        <form action="searchdonor.jsp">
           <div class="row">
      <div class="col-25">
        <label for="bgroup">BLOOD GROUP</label>
      </div>
      <div class="col-75">
        <select id="bgroup" name="blood">
          <option value="A+">A+</option>
          <option value="A-">A-</option>
          <option value="B+">B+</option>
          <option value="B-">B-</option>
          <option value="0+">O+</option>
          <option value="0-">O-</option>
          <option value="AB+">AB+</option>
          <option value="AB-">AB-</option>
          
        </select>
      </div>
    </div>
             <div class="row">
      <input type="submit" value="Submit">
    </div>
        </form>
        
    </body>
</html>
