<%-- 
    Document   : bestsinger
    Created on : 15 Apr, 2021, 4:04:57 PM
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
    <title>Best Singer of the year</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    
    
     <%
            Connection connvote = null;
                    PreparedStatement psvote = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    connvote = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    psvote = connvote.prepareStatement("select * from best_singer where user='"+session.getAttribute("userid")+"'");// where name='" + request.getParameter("userid") + "'");
                    ResultSet rsvote = psvote.executeQuery();
//                    int i = 
boolean isvotedone=false;
                    if(rsvote.next()) {
                        
                        isvotedone=true;
                    }
        %>
    
    
    
    
    <div class="wrapper d-none d-sm-block">
        <div class="nav">
            <div class="logo">
                <img src="images/logo.jpg" alt="">
            </div>

            <ul class="nav-area">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="about.html">About</a></li>
                <!-- <li><a href="#">Services</a></li>
                <li><a href="#">Portfolio</a></li> -->
                <li><a href="contact.html">Contact</a></li>
                <li><a href="loginandregistration.jsp">Logout</a></li>
            </ul>
        </div>
    </div>
    
    
    
    
    
    
    
    <section class="singer">

        <div class="bestsinger" id="bestsinger">
            <h1 class="nominees">Best singer of the year nominees</h1>
            <%
                    Connection conn = null;
                    PreparedStatement ps = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    ps = conn.prepareStatement("select * from singer");// where name='" + request.getParameter("userid") + "'");
                    ResultSet rs = ps.executeQuery();
                    int i = 0;
                    while (rs.next()) {
                        i++;
                %>
             <div class="singer">
                  <%
                        if (i % 2 != 0) {%>
                <div class="singerimg"><img src="upload/<%=rs.getString("singer_image")%>"  alt="img not supported">
                </div>
                <%
                            }
                        %>
                <div class="singerabt">
                    <h2 class="singerh2"><%=rs.getString("singer_name")%></h2>

                    <p><%=rs.getString("singer_about")%></p>
                    <% if(!isvotedone)
                        {%>
                        <a href="vote5?singer_name=<%=rs.getString("singer_name")%>&userid=<%=session.getAttribute("userid")%>" class="button" >vote</a>
                   
                        
                         
                   <% }
                   else
{out.print("<h3>you already voted for best singer</h3>");}
                   
                   %>
                </div>
                     <%
                          if (i % 2 == 0) {%>     
                     <div class="singerimg"><img src="upload/<%=rs.getString("singer_image")%>"  alt="img not supported">
                </div>
                    <%
                        }
                    %>
            </div>
              <%
                    }
                    rs.close();
                    ps.close();
                    conn.close();
                %>
<!--            <div class="singer">
                <div class="singerabt">
                    <h2 class="singerh2"> Shaan</h2>

                    <p>Shantanu Mukherjee (born 30 September 1972), known as Shaan, is an Indian playback singer, actor
                        and television presenter active in Hindi, Bengali, Marathi, Kannada, Telugu, Tamil, Gujarati,
                        Marathi and Urdu language films and a television host. He hosted the shows Sa Re Ga Ma Pa, Sa Re
                        Ga Ma Pa L'il Champs, Star Voice of India and STAR Voice of India 2. In Music Ka Maha Muqabla,
                        his team, Shaan's Strikers, finished as the runners up to Shankar Mahadevan's team. He appeared
                        as a judge in Sa Re Ga Ma Pa L'il Champs 2014–2015 and The Voice India Kids 2016. In 2015 and
                        2016, Shaan was the winning coach in each of the first two seasons of The Voice. In 2016, in The
                        Voice India Kids, he was the coach of the runner-up contestant.


                    </p>
                    <input class="button" type="submit" value="Vote">
                </div>
                <div class="singerimg"><img
                        src="318px-Shaan_AIIC_4_1.jpg"
                        alt="img not supported"></div>
            </div>
            
            -->
            
            
            
            
            
<!--            <div class="singer">
                <div class="singerimg"><img src="405px-Atif_Aslam_at_Badlapur_(cropped).jpg" alt="img not supported">
                </div>
                <div class="singerabt">
                    <h2 class="singerh2">Atif Aslam</h2>

                    <p>Muhammad Atif Aslam (born 12 March 1983 mostly referred to as Atif Aslam)
                        is a Pakistani playback singer and actor. He has recorded numerous chart-topping songs in both
                        Pakistan and India and is known for his vocal belting technique. He predominantly sings in
                        Urdu and Hindi, but has also sung in Punjabi, Bengali and Pashto. With a number of successful
                        chart-topping songs, he is often considered as one of the best playback singers in the Indian
                        and Pakistani music industries of all times.

                    </p>
                    <input class="button" type="button" value="Vote">
                </div>
            </div>
            <div class="singer">
                <div class="singerabt">
                    <h2 class="singerh2"> Shaan</h2>

                    <p>Shantanu Mukherjee (born 30 September 1972), known as Shaan, is an Indian playback singer, actor
                        and television presenter active in Hindi, Bengali, Marathi, Kannada, Telugu, Tamil, Gujarati,
                        Marathi and Urdu language films and a television host. He hosted the shows Sa Re Ga Ma Pa, Sa Re
                        Ga Ma Pa L'il Champs, Star Voice of India and STAR Voice of India 2. In Music Ka Maha Muqabla,
                        his team, Shaan's Strikers, finished as the runners up to Shankar Mahadevan's team. He appeared
                        as a judge in Sa Re Ga Ma Pa L'il Champs 2014–2015 and The Voice India Kids 2016. In 2015 and
                        2016, Shaan was the winning coach in each of the first two seasons of The Voice. In 2016, in The
                        Voice India Kids, he was the coach of the runner-up contestant.


                    </p>
                    <input class="button" type="button" value="Vote">
                </div>
                <div class="singerimg"><img
                        src="318px-Shaan_AIIC_4_1.jpg"
                        alt="img not supported"></div>
            </div>
            -->
            
            
            
            
            
        </div>
    </section>

</body>

</html>
