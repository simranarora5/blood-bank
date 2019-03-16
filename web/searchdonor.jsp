<%-- 
    Document   : searchdonor
    Created on : Apr 26, 2018, 7:07:14 PM
    Author     : Simran
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>searching donor..</title>
        <style>
             .first1{
                width: 100%;
                height: 60%;
                margin-top:0px;
            }
            .first1 table{
                width: 70%;
                height: 50px;
                margin-left: 200px;
            }
            .first1 table, th, td{
                 border-collapse: collapse;
                  border: 1px solid black;
}
.first1 h3{
    margin-top: 0px;
    
}
        </style>
    </head>
    <body>
        <%  
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ram");
                         out.println("connection successful");
                         String a=request.getParameter("blood");
                        int flag=0;
			 Statement st=(Statement) con.createStatement();
      
                         ResultSet rs;
                         rs=st.executeQuery("select NAME,ADDRESSS,AGE,PNO,BGROUP from donors where BGROUP='"+a+"' ");
                                     
                                {   %>
                        
                              <div class="first1">
    <CENTER><H3>DONORS AVAILABLE:</H3>
                            <TABLE>
                                <tr> 
                                  <th><b>NAME</b></th>
                                  <th><b>ADDRESS</b></th>
                                                          <th><b>AGE</b></th>
                                                          <th><b>PHONE NUMBER</b></th>
                                                          <th><b>BLOOD GROUP</b></th>
                                                          
                                </tr>
                      <%   while(rs.next())
                         {  flag=1;
%>                                    <tr>
      
                                             <td><%=rs.getString("NAME")%></td>
                                             <td><%=rs.getString("ADDRESSS")%></td>
                                             <td><%=rs.getString("AGE")%></td>
                                                     <td><%=rs.getString("PNO")%></td>
                                                     <td><%=rs.getString("BGROUP")%></td>
                                      </tr>
                                           <%     } %>
    </TABLE>
    </CENTER>   
                              </div>
  <%   } 
if(flag==0){
      %>
       
        <CENTER> <H3>TRY LATER,DONORS NOT AVAILABLE RIGHT NOW!!!</H3></CENTER>
                                  
                                     
                      
                      <% }
                              %> 
                                    
                             
                         
        
                              
  
    </body>
</html>
