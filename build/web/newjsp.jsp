<%-- 
    Document   : newjsp
    Created on : 1 Mar, 2021, 4:57:50 PM
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
        <h1>Hello World!
        <%=request.getParameter("new")%></h1>
        <form action="NewServlet">
            Name<input type="text" name="name"><br>
            Surname<input type="text" name="surname"><br>
            Dob<input type="date" name="dob"><br>
            Age<input type="number" name="age"><br>
            mob no<input type="text" name="mob no"><br>
            email<input type="email" name="email"><br>
            address<input type="text" name="address"><br>
            <a href="newjsp1.jsp"><input type="submit" value="submit" name="submit"></a><br>
            <a href="newjsp1.jsp">click to go database</a>
        </form>
    </body>
</html>
