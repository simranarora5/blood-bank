<%-- 
    Document   : resgister.jsp
    Created on : Apr 26, 2018, 9:56:01 AM
    Author     : Simran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel= "stylesheet" type="text/css"  href="style2.css">
        <title>REGISTRATION FORM</title>
    </head>
    <body>
    <center>
        <h2>
            REGISTRATION FORM
        </h2>
        <form action="savedata.jsp">
    <div class="row">
      <div class="col-25">
        <label for="name">NAME</label>
      </div>
      <div class="col-75">
        <input type="text" id="name" name="name" placeholder="Your name..">
      </div>
    </div>
            <div class="row">
      <div class="col-25">
        <label for="address">ADDRESS</label>
      </div>
      <div class="col-75">
        <textarea id="address" name="address" placeholder="Write something.." style="height:200px"></textarea>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="age">AGE</label>
      </div>
      <div class="col-75">
        <input type="text" id="age" name="age" placeholder="Your age..">
      </div>
    </div>
            <div class="row">
      <div class="col-25">
        <label for="pno">CONTACT NUMBER</label>
      </div>
      <div class="col-75">
        <input type="text" id="pno" name="pno" placeholder="Your number..">
      </div>
    </div>
            
    <div class="row">
      <div class="col-25">
        <label for="bgroup">BLOOD GROUP</label>
      </div>
      <div class="col-75">
        <select id="bgroup" name="bgroup">
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
      <div class="col-25">
        <label for="uname">USER NAME</label>
      </div>
      <div class="col-75">
        <input type="text" id="uname" name="uname" placeholder="Your user name..">
      </div>
    </div>
            <div class="row">
      <div class="col-25">
        <label for="pass">PASSWORD</label>
      </div>
      <div class="col-75">
        <input type="text" id="pass" name="pass" placeholder="Your password..">
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>
    </center>
   <a href="index_1.html" target="blank"><button id ="button_three">BACK</button></a>   
    </body>
</html>
