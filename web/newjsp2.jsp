<%-- 
    Document   : newjsp2
    Created on : 9 Mar, 2021, 5:48:16 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Connection conn = null;
                PreparedStatement ps = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps = conn.prepareStatement("select * from  actor where name='"+ request.getParameter("name")+"'");
                ResultSet rs = ps.executeQuery();
    if(rs.next())            
    {
        
        
        %>
        <form action="update">
            <input type="text" name="name" value="<%=rs.getString("name")%>"><br>
        <input type="text" name="age" value="<%=rs.getInt("age")%>"><br>
        <input type="submit" name="submit">
        </form>
        <%
            }
%>
    </body>
</html>
