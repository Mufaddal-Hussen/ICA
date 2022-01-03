<%-- 
    Document   : otp
    Created on : 21 Apr, 2021, 5:14:27 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>enter otp</title>
</head>
<body>
    <div class="outerotp">
       
        <div class=otp>
            <div class="innerotp">
               <%
        if(request.getParameter("msg")!=null)
        {%>
        <h4 style="color:red; padding-bottom: 10px; text-align: center;"><%=request.getParameter("msg")%></h4>
      <%  }
%> 
              <h1>india's choice Award </h1>
              <form action="registration">
                <label>
                    <span>Enter OTP</span>
                    <input type="text" name="otp">
                </label>
                <button class="submit" type="submit">ok</button>
              </form>
            </div>
        </div>
    </div>
    </body>
</html>