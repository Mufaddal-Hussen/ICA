<%-- 
    Document   : bestactress
    Created on : 15 Apr, 2021, 3:35:23 PM
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
    <link rel="stylesheet" href="style.css">
    <title>Best Actress of the year</title>
</head>

<body>
    
    
    
    
    <%
            Connection connvote = null;
                    PreparedStatement psvote = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    connvote = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    psvote = connvote.prepareStatement("select * from best_actress where user='"+session.getAttribute("userid")+"'");// where name='" + request.getParameter("userid") + "'");
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
    
    
    
    <section class="actress">
        
        
        <div class="bestactress" id="bestactress">
            <h1 class="nominees">Best Actress of the year nominees</h1>
              <%
                    Connection conn = null;
                    PreparedStatement ps = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    ps = conn.prepareStatement("select * from actress");// where name='" + request.getParameter("userid") + "'");
                    ResultSet rs = ps.executeQuery();
                    int i = 0;
                    while (rs.next()) {
                        i++;
                %>
            
            <div class="actress">
                <%
                        if (i % 2 != 0) {%> 
                <div class="actressimg">
                    <img src="upload/<%=rs.getString("actress_image")%>"  alt="img not supported"></div>
                 <%
                            }
                        %>
                <div class="actressabt">
                    <h2 class="actressh2"><%=rs.getString("actress_name")%></h2>

                    <p><%=rs.getString("actress_about")%></p>
                  <% if(!isvotedone)
                        {%>
                    <a href="vote3?actress_name=<%=rs.getString("actress_name")%>&userid=<%=session.getAttribute("userid")%>" class="button" >vote</a>
                
                    <% }
                   else
{out.print("<h3>you already voted for best actress</h3>");}
                   
                   %>
                   
                </div>
                     <%
                          if (i % 2 == 0) {%>     
                    <div class="actressimg"><img src="upload/<%=rs.getString("actress_image")%>"  alt="img not supported"></div>
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
<!--            <div class="actress">
                <div class="actressabt">
                    <h2 class="actressh2"> Alia Bhatt</h2>

                    <p>Alia Bhatt (born 15 March 1993) is an British-Indian actress and singer who
                        works in Hindi-language films.One of the highest-paid actresses of India, as of 2019, her
                        accolades include four Filmfare Awards. She has appeared in Forbes India's Celebrity 100 list
                        since 2014 and was featured by Forbes Asia in their 30 Under 30 list of 2017.

                        Born into the Bhatt family, she is the daughter of filmmaker Mahesh Bhatt and actress Soni
                        Razdan. After making her acting debut as a child in the 1999 thriller Sangharsh, she played her
                        first leading role in Karan Johar's teen drama Student of the Year (2012).


                    </p>
                    <input class="button"   type="submit" value="Vote">
                </div>
                <div class="actressimg">
                    <img src="Alia_Bhatt_at_the_launch_of_Bata???s_new_collection_(02).jpg" alt="img not supported">
                </div>
            </div>-->
        
        

<!--        <div class="bestactress" id="bestactress">
            <h1 class="nominees">Best Actress of the year nominees</h1>
            <div class="actress">
                <div class="actressimg"><img src="321px-Deepika_Padukone_Cannes_2018_(cropped).jpg"
                        alt="img not supported"></div>
                <div class="actressabt">
                    <h2 class="actressh2">Deepika Padukone</h2>

                    <p>Deepika Padukone born 5 January 1986 is an
                        Indian actress and producer who works in Hindi films. One of the highest-paid actresses in
                        India, her accolades include three Filmfare Awards. She features in listings of the nation's
                        most popular personalities, and Time named her one of the 100 most influential people in the
                        world in 2018.</p>
                    <input class="button" type="button" value="Vote">
                </div>
            </div>
            <div class="actress">
                <div class="actressabt">
                    <h2 class="actressh2"> Alia Bhatt</h2>

                    <p>Alia Bhatt (born 15 March 1993) is an British-Indian actress and singer who
                        works in Hindi-language films.One of the highest-paid actresses of India, as of 2019, her
                        accolades include four Filmfare Awards. She has appeared in Forbes India's Celebrity 100 list
                        since 2014 and was featured by Forbes Asia in their 30 Under 30 list of 2017.

                        Born into the Bhatt family, she is the daughter of filmmaker Mahesh Bhatt and actress Soni
                        Razdan. After making her acting debut as a child in the 1999 thriller Sangharsh, she played her
                        first leading role in Karan Johar's teen drama Student of the Year (2012).


                    </p>
                    <input class="button" type="button" value="Vote">
                </div>
                <div class="actressimg"><img src="Alia_Bhatt_at_the_launch_of_Bata???s_new_collection_(02).jpg"
                        alt="img not supported"></div>
            </div>

            <div class="actress">
                <div class="actressimg"><img src="Shraddha_Kapoor_at_Badlapur_success_bash.jpg" alt="img not supported">
                </div>
                <div class="actressabt">
                    <h2 class="actressh2">Shraddha Kapoor</h2>

                    <p>Shraddha Kapoor (born 3 March 1987) is an Indian actress and singer who works in Hindi-language
                        films. She features in listings of the most popular and the highest-paid actresses in
                        India and is one of the most followed Indian actresses on Instagram. She has been featured
                        in Forbes India's Celebrity 100 list since 2014 and was featured by Forbes Asia in their 30
                        Under 30 list of 2016.

                        The daughter of actor Shakti Kapoor, she began her acting career with a brief role in the 2010
                        heist film Teen Patti, and followed it with her first leading role in the teen drama Luv Ka The
                        End (2011).</p>
                    <input class="button" type="button" value="Vote">
                </div>
            </div>
            <div class="actress">
                <div class="actressabt">
                    <h2 class="actressh2"> Anushka Sharma</h2>

                    <p>Anushka Sharma (born 1 May 1988) is an Indian actress and producer
                        who works in Hindi films. One of the most popular and highest-paid actresses in India, she has
                        received several awards, including a Filmfare Award. She has appeared in Forbes India's
                        Celebrity 100 since 2012 and was featured by Forbes Asia in their 30 Under 30 list of 2018.

                        Born in Ayodhya and raised in Bangalore, Sharma had her first modelling assignment for the
                        fashion designer Wendell Rodricks in 2007 and later moved to Mumbai to pursue a full-time career
                        as a model.

                    </p>
                    <input class="button" type="button" value="Vote">
                </div>
                <div class="actressimg"><img src="355px-Anushka_Sharma_promoting_Zero.jpg"
                        alt="img not supported"></div>
            </div>-->









        </div>
    </section>
</body>

</html>
