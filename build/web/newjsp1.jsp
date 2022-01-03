<%-- 
    Document   : newjsp1
    Created on : 8 Mar, 2021, 2:49:28 PM
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
        <h2>
            <%
                if(request.getParameter("delete")!=null && request.getParameter("delete").equals("yes")){
                    out.print("deleted successfully");
                }else{
                    out.print("deletion failed");
                }
                %>
        </h2>
        <table border="5px" cellspacing="5px" cellpadding="5px">

            <th> name </th>
            <th>age</th>
            <th>Action</th>
            <th>Action</th>
            <%
                Connection conn = null;
                PreparedStatement ps = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps = conn.prepareStatement("select * from movie");
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
            %>
            <tr>
             <td> <%=rs.getString(1)%></td>
             <td><%=rs.getInt(2)%></td>
                <td><a href="delete?moviename=<%=rs.getString(1)%>">Delete</a></td>
                <td><a href="newjsp2.jsp?name=<%=rs.getString(1)%>">Update</a></td>
            
            </tr>

        <%
            }

        %>
    </table>
</body>
</html>
