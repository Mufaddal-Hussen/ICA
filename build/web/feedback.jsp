<%-- 
    Document   : feedback
    Created on : 21 Apr, 2021, 2:45:30 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="newcss.css">
    <title>FeedBack</title>
</head>
<body>
    <div class="outerotp">

        <div class=otp>
            <div class="innerotp">
              <h1>Feedback </h1>
              <p>We would like your feedback to improve our website</p>
              <form action="addfeedback">
              <label>
                <span>Your name</span>
              <input type=" text" name="username">
            </label>
                <label>
                    <span>Your feedback</span>
                  <textarea name="feedback" id="" cols="30" rows="5" placeholder="write your feedback here"></textarea>
                </label>
                <button class="submit" type="submit">submit</button>
              </form>
            </div>
        </div>

        <div class="allfeedback">
            <div class=otp>
                 
            <div class="innerfeed">
             <!--<div class="feedbacks">-->
           
            <%
                    Connection conn = null;
                    PreparedStatement ps = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    ps = conn.prepareStatement("select * from feedback");// where name='" + request.getParameter("userid") + "'");
                    ResultSet rs = ps.executeQuery();
                    int i = 0;
                    while (rs.next()) {
                        i++;
                %>
<!--            <div class=otp>
                 
            <div class="innerfeed">
             --><div class="feedbacks">
 
                 <h4><%=rs.getString("user_name")%></h4>
                 <p><%=rs.getString("feedback")%></p>
                </div>
    
    
<!--              </div>
        </div>
        </div>-->
        <%
                    }
                    rs.close();
                    ps.close();
                    conn.close();
                %>
                              </div>
        </div>
        </div>
    </div>
    </div>
    </body>
</html>