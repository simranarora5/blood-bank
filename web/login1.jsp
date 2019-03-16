<%-- 
    Document   : login
    Created on : Apr 27, 2018, 9:57:07 PM
    Author     : Simran
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PAGE</title>
        <style>
            .first{
                width: 100%;
                height: 60%;
                margin-top:0px;
            }
            .first table{
                width: 70%;
                height: 50px;
                margin-left: 200px;
            }
            .first table, th, td{
                 border-collapse: collapse;
                  border: 1px solid black;
}
.first h2{
    margin-top: 0px;
    
}
            
            .second{
                width: 100%;
                height: 200px;
                background-color: rgba(0,0,0,0.3);
                margin-top: 300px;
            }
            div{
                width: 100%;
                height: 50%;
               
            }
            #button{
                background-color: white;
    color: black;
    padding: 12px 20px;
    border: 2px solid black;
    border-radius: 4px;
    cursor: pointer;
    
            }
            #b1{
                  background-color: white;
    color: black;
    margin-top: 50px;
    padding: 12px 20px;
    border: 2px solid black;
    border-radius: 4px;
    cursor: pointer;
            }
            
        </style>
    </head>
    <body>
        <%
            Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ram");

            String a=request.getParameter("uname");
            String b=request.getParameter("pass");
          Statement st= con.createStatement();
                         ResultSet rs;
            rs = st.executeQuery("select * from donors where UNAME='"+a+"' and PASS='"+b+"' ");
            if(a.isEmpty()|| b.isEmpty())
{
   %>
   
    <CENTER> <B><h3>ENTER ALL REQUIRED DETAILS!!!<H3></B></CENTER> 
                   
   

<%@ include file="index_1.html"%> 
<%}     

else if(rs.next()==false)
{
                                        %>
                                        <CENTER>    <b><h3>PLEASE ENTER VALID USERNAME OR PASSWORD!!!</h3></b></CENTER>
 <%@ include file="index_1.html"%>
    <%                                    
    
}
else{
        
          %>
          <div class='first'>
          <CENTER> <B>   <h2>YOU HAVE LOGGED IN SUCCESSFULLY!! YOUR DETAILS ARE:</H2></B></CENTER>   <BR>
                          <TABLE>
                              <tr> 
                                  <th><b>NAME</b></th>
                                  <th><b>ADDRESS</b></th>
                                                          <th><b>AGE</b></th>
                                                          <th><b>PHONE NUMBER</b></th>
                                                          <th><b>BLOOD GROUP</b></th>
                                                          <th><b>USER NAME</b></th>
                                                          <th><b>PASSWORD</b></th>
                                                          </tr>
                                         <tr>
                                             <td><%=rs.getString("NAME")%></td>
                                             <td><%=rs.getString("ADDRESSS")%></td>
                                             <td><%=rs.getString("AGE")%></td>
                                                     <td><%=rs.getString("PNO")%></td>
                                                     <td><%=rs.getString("BGROUP")%></td>
                                                     <td><%=rs.getString("UNAME")%>
                                                     </td><td><%=rs.getString("PASS")%></td>
                                         </tr>
                          </table>    
              
			  
                         </div>
                         <div class='second'>
                             <label>
                                 <h3><b> DO YOU WANT TO CHANGE PASSWORD? <b></h3>
                             </label>
                             <form action='password.jsp' method='get'>
                                 <input type='submit' value='CLICK HERE!' id='button'>
                             </form>
                            <a href="index_1.html" target="blank"><button id="b1">LOGOUT</button></a>   
                         </div>
                                        
            <%
                } %>  
                                         
 
    </body>
</html>
