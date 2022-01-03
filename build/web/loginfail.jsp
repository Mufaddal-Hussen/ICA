<%-- 
    Document   : loginfail
    Created on : 19 Apr, 2021, 3:57:27 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <h2 class="log">Sign In</h2>
        <form action="login">
      <label>
        <span>Email Address</span>
        <input type="email" name="email">
      </label>
      <label>
        <span>Password</span>
        <input type="password" name="password">
      </label>
      <label style="color: red;">Wrong E-mail or Password</label>
      <!--<a href="home.html">-->
          <button class="submit" type="submit">Log In</button>
      <!--</a>-->
     <p class="forgot-pass">Forgot Password ?</p>
    <a href="adminlogin.html"> <p class="forgot-pass">Login As Admin</p></a>
        </form>
     
     <div class="social-media">
       <ul>
         <a href="https://web.whatsapp.com/" target="blank"><li><img src="images/facebook.png"></li></a>
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
        <h2 class="log">Sign Up</h2>
        <label>
          <span>Name</span>
          <input type="text">
        </label>
        <label>
          <span>Email</span>
          <input type="email">
        </label>
        <label>
          <span>mobile</span>
          <input type="text">
        </label>
        
        <label>
          <span>Password</span>
          <input type="password">
        </label>
        <label>
          <span>Confirm Password</span>
          <input type="password">
        </label>
        <button type="button" class="submit">Sign Up Now</button>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="script.js"></script>
</div>
</body>
</html>
