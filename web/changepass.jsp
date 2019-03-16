<%-- 
    Document   : changepass.jsp
    Created on : Apr 28, 2018, 7:29:20 PM
    Author     : Simran
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Changing Password....</title>
      
    </head>
    <body>
     <%   
         String a=request.getParameter("user");
       String b=request.getParameter("oldpass");
       String c=request.getParameter("confirm");
       String d=request.getParameter("newpass");
       
        
            Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ram");
 out.println("connection successful...");
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select * from donors where UNAME='"+a+"'and PASS='"+b+"' ");
 boolean bo=rs.next(); 
                    if(a.isEmpty() || b.isEmpty() || c.isEmpty() || d.isEmpty())
{
    %>
    <center><h3>ALL FIELDS MANDATORY.<br>PLEASE ENTER ALL DETAILS!!!</h3></center>
     <%@ include file="password.jsp" %>
    <%
}            
                   
       
 
else if(bo==false)
 {
     %>
     
    <center><h3>ENTER VALID USER NAME OR PASSWORD!!</h3></center>
    <%@ include file="password.jsp" %>
   <%  
 }

  else  if(c.equals(d)==false)
{
%>
    <center><h3>CONFIRM PASSWORD FIELD DO NOT MATCH NEW PASSWORD FIELD!!!<br> PLEASE ENTER CORRECTLY.</h3></center>
           <%@ include file="password.jsp" %>
      <% } 
      
          else{
              Statement  pr= con.createStatement();
pr.executeUpdate("update donors set PASS='"+d+"' where UNAME='"+a+"' ");
       %>
    <center><h3>PASSWORD SUCCESSFULLY CHANGED!!</h3></center>
           <%@ include file="password.jsp" %>
      <%  
 }
%>
    </body>
</html>
