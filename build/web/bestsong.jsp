<%-- 
    Document   : bestsong
    Created on : 15 Apr, 2021, 4:11:40 PM
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
    <title>Best Song of the year</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    
    <%
            Connection connvote = null;
                    PreparedStatement psvote = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    connvote = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    psvote = connvote.prepareStatement("select * from best_song where user='"+session.getAttribute("userid")+"'");// where name='" + request.getParameter("userid") + "'");
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
    
    
    <section class="song">

        <div class="bestsong" id="bestsong">
            <h1 class="nominees">Best song of the year nominees</h1>
             <%
                    Connection conn = null;
                    PreparedStatement ps = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    ps = conn.prepareStatement("select * from song");// where name='" + request.getParameter("userid") + "'");
                    ResultSet rs = ps.executeQuery();
                    int i = 0;
                    while (rs.next()) {
                        i++;
                %>
            <div class="song">
                  <%
                        if (i % 2 != 0) {%>
                <div class="songimg"><img src="upload/<%=rs.getString("song_image")%>" 
                        alt="img not supported"></div>
                <%
                            }
                        %>
                <div class="songabt">
                    <h2 class="songh2"><%=rs.getString("song_name")%></h2>

                    <p><%=rs.getString("song_about")%>

                    </p>
                    <% if(!isvotedone)
                        {%>
                        <a href="vote4?song_name=<%=rs.getString("song_name")%>&userid=<%=session.getAttribute("userid")%>" class="button" >vote</a>
                   
                        
                         
                   <% }
                   else
{out.print("<h3>you already voted for best singer</h3>");}
                   
                   %>
                </div>
                     <%
                          if (i % 2 == 0) {%>     
                     <div class="songimg"><img src="upload/<%=rs.getString("song_image")%>" 
                        alt="img not supported"></div>
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
<!--            <div class="song">
                <div class="songabt">
                    <h2 class="songh2"> Pachtaoge</h2>

                    <p>Pachtaoge Song Lyrics [in Hindi as पछ्ताओगे] is a latest song of B Praak & Jaani with satisfying
                        vocals of Arijit Singh (From “Jaani Ve”) album.The heart-broken Hindi track “BADA PACHTAOGE”
                        with its lyrics in Hindi, English fonts. The stars filmed in music video of ‘Pachtaoge’ are
                        Vicky Kaushal & Nora Fatehi while Arvindr Khaira is director. B Praak composes the music for
                        this track and Jaani has penned all the Hindi lyrics.


                    </p>
                    <input class="button" type="submit" value="Vote">
                </div>
                <div class="songimg"><img src="MV5BMDRjZjQyOTQtNjFjNS00YThjLWJkODAtNTIyNDgyYTI0ZjkwXkEyXkFqcGdeQXVyMTA5NzIyMDY5._V1_.jpg"
                        alt="img not supported"></div>
            </div>
            
            
            
            -->
            
            
            
<!--            <div class="song">
                <div class="songimg"><img src="teri-aankhon-mein-darshan-raval-neha-kakkar-300x169.jpg"
                        alt="img not supported"></div>
                <div class="songabt">
                    <h2 class="songh2">Teri Aankhon Mein</h2>

                    <p>Teri Aankhon Mein Lyrics: is Latest Hindi song sung by by Darshan Raval, Neha Kakkar and this
                        song is featuring Divya Khosla Kumar, Pearl V Puri, Rohit Suchanti while music of this brand new
                        song is given by Manan Bhardwaj and Teri Aankhon Mein Song lyrics penned by Kumaar. This video
                        song is directed by Radhika Rao, Vinay Sapru.

                    </p>
                    <input class="button" type="button" value="Vote">
                </div>
            </div>
            <div class="song">
                <div class="songabt">
                    <h2 class="songh2"> Pachtaoge</h2>

                    <p>Pachtaoge Song Lyrics [in Hindi as पछ्ताओगे] is a latest song of B Praak & Jaani with satisfying
                        vocals of Arijit Singh (From “Jaani Ve”) album.The heart-broken Hindi track “BADA PACHTAOGE”
                        with its lyrics in Hindi, English fonts. The stars filmed in music video of ‘Pachtaoge’ are
                        Vicky Kaushal & Nora Fatehi while Arvindr Khaira is director. B Praak composes the music for
                        this track and Jaani has penned all the Hindi lyrics.


                    </p>
                    <input class="button" type="button" value="Vote">
                </div>
                <div class="songimg"><img src="MV5BMDRjZjQyOTQtNjFjNS00YThjLWJkODAtNTIyNDgyYTI0ZjkwXkEyXkFqcGdeQXVyMTA5NzIyMDY5._V1_.jpg"
                        alt="img not supported"></div>
            </div>
            -->
            
            
            
            
            
            
            
            
            
        </div>
    </section>

</body>

</html>
