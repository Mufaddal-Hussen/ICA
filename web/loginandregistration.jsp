<%-- 
    Document   : loginandregistration
    Created on : 14 Apr, 2021, 3:27:46 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>ICA</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
  </head>
  <body>
  <div class="main"> 
    <div class="cont">
      <div class="form sign-in">
        <%
//            out.print(session.getAttribute("userid"));
            if(session.getAttribute("userid")!=null)
            {
                session.removeAttribute("userid");
            }
        if(request.getParameter("msg")!=null)
        {
        %>
        <h4 style="text-align: center; color:red;  margin-bottom: 10px; "><%=request.getParameter("msg")%></h4>
        <%
            
        }
        %>
          <h2 class="log">Sign In</h2>
        <form action="login">
      <label>
        <span>Email Address</span>
        <input type="email" name="email" required>
      </label>
      <label>
        <span>Password</span>
        <input type="password" name="password" required>
      </label>
      <!--<a href="home.html">--> 
     
          <button type="submit" class="submit" >Log In</button>
      <!--</a>-->
        </form>
     <p class="forgot-pass">Forgot Password ?</p>
    <a href="adminlogin.html"> <p class="forgot-pass">Login As Admin</p></a>
     
     <div class="social-media">
       <ul>
         <!--<a href="https://web.whatsapp.com/" target="blank"></a>-->
         <li><img src="images/facebook.png"></li>
         <li><img src="images/twitter.png"></li>
         <li><img src="images/linkedin.png"></li>
         <li><img src="images/instagram.png"></li>
        </ul>
        
      </div>
    </div>
    
    <div class="sub-cont">
      <div class="img">
        <div class="img-text m-up">
          <h2>New here?</h2>
          <p>Sign up and Vote for your favorite celebrity, movie, singer, etc.</p>
        </div>
        <div class="img-text m-in">
          <h2>One of us?</h2>
          <p>If you already has an account, just Log in. We've missed you!</p>
        </div>
        <div class="img-btn">
          <span class="m-up">Sign Up</span>
          <span class="m-in">Sign In</span>
        </div>
      </div>
      <div class="form sign-up">
          <form action="SendMail">
        <h2 class="log">Sign Up</h2>
        <label>
          <span>Name</span>
          <input type="text" name="name" required>
        </label>
        <label>
          <span>Email</span>
          <input type="email" name="email" required>
        </label>
        <label>
          <span>mobile</span>
          <input type="text" name="mobile"required>
        </label>
        
        <label>
          <span>Password</span>
          <input type="password" name="password"required>
        </label>
        <label>
          <span>Confirm Password</span>
          <input type="password" name="copassword"required>
        </label>
        
       <button type="submit" class="submit">Sign Up Now</button>
          </form>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="script.js"></script>
</div>
</body>
</html>
