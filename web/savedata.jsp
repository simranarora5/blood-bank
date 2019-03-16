<%-- 
    Document   : savedata
    Created on : Apr 26, 2018, 10:15:35 AM
    Author     : Simran
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            
            String name=request.getParameter("name");
            String address=request.getParameter("address");
            String age=request.getParameter("age");
            String pno=request.getParameter("pno");
            String bgroup=request.getParameter("bgroup");
            String uname=request.getParameter("uname");
            String pass=request.getParameter("pass");
            out.println(name);
if(name.isEmpty() || address.isEmpty() || age.isEmpty() || pno.isEmpty() || bgroup.isEmpty() || uname.isEmpty() || pass.isEmpty())
{
    out.println("ALL FIELDS MANDATORY!"+"<br>"+"ENTER ALL DETAILS");
    %>
    <%@ include file = "resgister.jsp" %>
<% }
else{
  Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ram");

String str="insert into Donors values('"+name+"','"+address+"','"+age+"','"+pno+"','"+bgroup+"','"+uname+"','"+pass+"')";
Statement st=con.createStatement();
st.executeUpdate(str);
%>

<h2 color: red>CONGRATULATIONS!!!<BR> YOU HAVE SUCCESSFULLY REGISTERED.</h2>
<%
}
%>             
    </body>
</html>
