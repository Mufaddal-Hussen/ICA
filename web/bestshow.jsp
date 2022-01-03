<%-- 
    Document   : bestshow
    Created on : 15 Apr, 2021, 3:53:34 PM
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
    <title>Best TV Show of the year</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    
    <%
            Connection connvote = null;
                    PreparedStatement psvote = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    connvote = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    psvote = connvote.prepareStatement("select * from best_show where user='"+session.getAttribute("userid")+"'");// where name='" + request.getParameter("userid") + "'");
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
    
    <section class="show">

        <div class="bestshow" id="bestshow">
            <h1 class="nominees">Best TV Show of the year nominees</h1>
            
             <%
                    Connection conn = null;
                    PreparedStatement ps = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    ps = conn.prepareStatement("select * from tvshow");// where name='" + request.getParameter("userid") + "'");
                    ResultSet rs = ps.executeQuery();
                    int i = 0;
                    while (rs.next()) {
                        i++;
                %>
            
            <div class="show">
                 <%
                        if (i % 2 != 0) {%>
                <div class="showimg"><img src="upload/<%=rs.getString("show_image")%>"  alt="img not supported"></div>
               <%
                            }
                        %>
                <div class="showabt">
                    <h2 class="showh2"><%=rs.getString("show_name")%></h2>

                    <p><%=rs.getString("show_about")%></p>
                   <% if(!isvotedone)
                        {%>
                        <a href="vote6?show_name=<%=rs.getString("show_name")%>&userid=<%=session.getAttribute("userid")%>" class="button" >vote</a>
                   
                        
                         
                   <% }
                   else
{out.print("<h3>you already voted for best TV Show</h3>");}
                   
                   %>
                </div>
                 <%
                          if (i % 2 == 0) {%>     
                     <div class="showimg"><img src="upload/<%=rs.getString("show_image")%>"  alt="img not supported"></div>
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
<!--            <div class="show">
                <div class="showabt">
                    <h2 class="showh2">Comedy Nights with Kapil</h2>

                    <p>Comedy Nights With Kapil is an Indian sketch comedy and celebrity talk show hosted by Kapil
                        Sharma, that premiered on Colors TV on 22 June 2013 and ended on 24 January 2016. Many of the
                        episodes feature celebrity guests who usually appear to promote their latest films in a
                        comedy-focused talk show format.

                        The show became India's highest rated scripted TV show.At CNN-IBN Indian of the Year awards,
                        Sharma was awarded the Entertainer of the Year award for 2013.


                    </p>
                    <input class="button" type="submit" value="Vote">
                </div>
                <div class="showimg"><img src="ComedyNightswithKapilImage.jpg" alt="img not supported"></div>
            </div>-->

            
            
            
<!--            <div class="show">
                <div class="showimg"><img src="Anupamaatvseries.jpg" alt="img not supported"></div>
                <div class="showabt">
                    <h2 class="showh2">Anupamaa</h2>

                    <p>Anupamaa is an Indian drama television series that premiered on 13 July 2020 on Star Plus.
                        Produced by Rajan Shahi and Deepa Shahi under Director's Kut Productions, it stars Rupali
                        Ganguly in the titular role. It is based on Star Jalsha's Bengali series Sreemoyee.</p>
                    <input class="button" type="button" value="Vote">
                </div>
            </div>
            <div class="show">
                <div class="showabt">
                    <h2 class="showh2">Comedy Nights with Kapil</h2>

                    <p>Comedy Nights With Kapil is an Indian sketch comedy and celebrity talk show hosted by Kapil
                        Sharma, that premiered on Colors TV on 22 June 2013 and ended on 24 January 2016. Many of the
                        episodes feature celebrity guests who usually appear to promote their latest films in a
                        comedy-focused talk show format.

                        The show became India's highest rated scripted TV show.At CNN-IBN Indian of the Year awards,
                        Sharma was awarded the Entertainer of the Year award for 2013.


                    </p>
                    <input class="button" type="button" value="Vote">
                </div>
                <div class="showimg"><img src="ComedyNightswithKapilImage.jpg" alt="img not supported"></div>
            </div>


            <div class="show">
                <div class="showimg"><img src="TMKOC_Cast.jpg" alt="img not supported"></div>
                <div class="showabt">
                    <h2 class="showh2">Taarak Mehta Ka Ooltah Chashmah</h2>

                    <p>Taarak Mehta Ka Ooltah Chashmah (Taarak Mehta's inverted spectacles) is a Hindi sitcom
                        based on the weekly column "Duniya Ne Undha Chasma" by Taarak Mehta in Chitralekha magazine. It
                        is produced by Asit Kumarr Modi. It premiered on 28 July 2008 and airs on Sony SAB. The
                        series is one of the longest-running Indian sitcoms by episode count.</p>
                        <input class="button" type="button" value="Vote">
                </div>
            </div>-->






        </div>
    </section>

</body>

</html>
