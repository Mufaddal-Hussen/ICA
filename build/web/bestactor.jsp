<%-- 
    Document   : bestactor
    Created on : 3 Apr, 2021, 4:55:15 PM
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
    <title>Best Actor of the year</title>
</head>
<body>
    
    
    <%
            Connection connvote = null;
                    PreparedStatement psvote = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    connvote = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    psvote = connvote.prepareStatement("select * from best_actor where user='"+session.getAttribute("userid")+"'");// where name='" + request.getParameter("userid") + "'");
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
    
    
    
    <section class="acter">

        <div class="bestacter" id="bestacter">
            <h1 class="nominees">Best Actor of the year nominees</h1>
            <%
                    Connection conn = null;
                    PreparedStatement ps = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    ps = conn.prepareStatement("select * from actor");// where name='" + request.getParameter("userid") + "'");
                    ResultSet rs = ps.executeQuery();
                    int i = 0;
                    while (rs.next()) {
                        i++;
                %>
            <div class="acter">
                 <%
                        if (i % 2 != 0) {%>     
           
                   <div class="acterimg"><img src="upload/<%=rs.getString("actor_image")%>"  alt="img not supported"></div>
           <%
                            }
                        %>
                   <div class="acterabt">
                <h2 class="acterh2"><%=rs.getString("actor_name")%></h2>
                
                <p><%=rs.getString("actor_about")%></p>
                <% if(!isvotedone)
                        {%>
                    <a href="vote2?actor_name=<%=rs.getString("actor_name")%>&userid=<%=session.getAttribute("userid")%>" class="button" >vote</a>
                
                    <% }
                   else
{out.print("<h3>you already voted for best actor</h3>");}
                   
                   %>
                   
                   </div>
                    <%
                          if (i % 2 == 0) {%>     
                    <div class="movieimg" >
                        <img src="upload/<%=rs.getString("actor_image")%>"  alt="img not supported">
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
<!--            <div class="acter">
                <div class="acterabt">
                    <h2 class="acterh2">Varun Dhawan</h2>
                    
                    <p>Varun began 2020 with Street Dancer 3, which did not perform as well as it was expected to. But his
                        next venture ??? the remake of Coolie No. 1 ??? reunites him with Daddy Dhawan, a collaboration that has
                        worked well in the past. The film was slated to hit theatres in May and the makers have not
                        announced a new release date yet. Varun will also be seen in Rannbhoomi this year, which is slated
                        to hit theatres in November.
                    </p>
                    <input class="button" type="button" value="Vote">
                </div>
                <div class="acterimg"><img src="318px-Varun_Dhawan_filmfare.jpg" alt="img not supported"></div>
            </div>
            <div class="acter">
            <div class="acterimg"><img src="Rajkumar_Rao_Filmfare_Glamour_and_Style_Awards_2019_(cropped).jpg"
                alt="img not supported"></div>
                <div class="acterabt">
                    <h2 class="acterh2">Rajkummar Rao</h2>
                    
                    <p>Rajkummar will next be seen in Anurag Basu???s Ludo and Hardik Mehta???s Roohi Afzana, both of which were
                        slated for a release in April, followed by yet another Hansal Mehta collaboration titled Chhalaang,
                        which was supposed to release in June. It is reported that all three films might have an online
                        release.</p>
                        <input class="button" type="button" value="Vote">
                    </div>
                </div>
                <div class="acter">
                    <div class="acterabt">
                        <h2 class="acterh2">Kartik Aaryan</h2>
                        
                        <p>Kartik was supposed to have a busy 2020 and all of his films were going to be sequels. His
                            Valentine???s Day release was the much-awaited Love Aaj Kal, which did not receive the same
                            appreciation as its namesake. This was to be followed by Bhool Bhulaiyaa 2 that is still slated to
                            release in late July. The release date of Dostana 2 is not out yet but it could very well be pushed
                            to 2021, as the shooting has barely begun on the film.
                        </p>
                        <input class="button" type="button" value="Vote">
                    </div>
                    <div class="acterimg"><img src="Kartik_Aaryan_in_2018.jpg" alt="img not supported"></div>
                </div>
                <div class="acter">
                    <div class="acterimg"><img src="Ayushmann_Khurrana_promoting_Andhadhun.jpg" alt="img not supported"></div>
                    <div class="acterabt">
                <h2 class="acterh2">Ayushmann Khurrana</h2>
                
                <p>So far, only two of Ayushmann???s movies have been announced for this year ??? Shubh Mangal Zyada
                    Saavdhan and Gulabo Sitabo. While the sequel, which released in February, was one of the most loved
                    films of the year, Gulabo Sitabo will directly release on Amazon Prime on June 12.</p>
                    <input class="button" type="button" value="Vote">
                </div>
            </div>
            <div class="acter">
                <div class="acterabt">
                    <h2 class="acterh2">Vicky Kaushal</h2>
                    
                    <p>Vicky???s first venture of the year was the horror film titled Bhoot ??? Part One: The Haunted Ship,
                        which was Dharma Productions??? first dud of the year. Next, Vicky will be seen in the biopic Sardar
                        Udham Singh that is slated to hit theatres in October.
                    </p>
                    <input class="button" type="button" value="Vote">
                </div>
                <div class="acterimg"><img src="304px-Vicky_Kaushal_at_HT_Style_Awards.jpg" alt="img not supported"></div>
            </div>
            <div class="acter">
                <div class="acterimg"><img src="584px-Akshay_Kumar_at_Star_Guild_Awards.jpg" alt="img not supported"></div>
                <div class="acterabt">
                    <h2 class="acterh2">Akshay Kumar</h2>
                    
                    <p>2020 was to be Khiladi Kumar???s busiest year yet. His biggest release of the year, Sooryavanshi has
                        now been pushed indefinitely but might just be one of the first movies to release hen theatres
                        reopen. Akshay was also to have an Eid release with Laxmmi Bomb, which rumors suggest might directly
                        release on an OTT platform. The biopic Prithviraj is still slated to release in November, while the
                        earlier December release of Bachchan Pandey has already been pushed to January 2021.</p>
                        <input class="button" type="button" value="Vote">
                    </div>
                </div>
                
                <div class="acter">
            <div class="acterabt">
                <h2 class="acterh2">Ranveer Singh</h2>
                
                <p>While Brahmastra remains Ranbir???s most highly awaited movie ever, there???s still no confirmation
                    whether the movie will release next year or not. The actor, however, will be seen in Shamshera,
                    which is slated to release at the end of July.
                </p>
                <input class="button" type="button" value="Vote">
            </div>
            <div class="acterimg"><img src="318px-Ranbir_Kapoor_promoting_Bombay_Velvet.jpg" alt="img not supported">
            </div>
        </div>
        <div class="acter">
            <div class="acterimg"><img src="319px-Aamir_Khan_From_The_NDTV_Greenathon_at_Yash_Raj_Studios_(11).jpg"
                alt="img not supported"></div>
                <div class="acterabt">
                    <h2 class="acterh2">Aamir Khan</h2>
                    
                    <p>Aamir will be back on the big screen in 2020 but you will have to wait till the end of the year for
                        his Forrest Gump remake titled Laal Singh Chaddha. The movie is slated to hit theatres on Christmas,
                        although the shooting has been halted due to the current crises.</p>
                    <input class="button" type="button" value="Vote">
                </div>
            </div>
            <div class="acter">
                <div class="acterabt">
                    <h2 class="acterh2">Ranveer Singh</h2>
                    
                    <p>Ranveer???s biggest project in 2020 was Kabir Khan???s ???83, where he plays the role of the legend Kapil
                        Dev. The movie was to release in April and the makers have not announced a new release date yet.
                        Ranveer will also be seen in YRF???s Jayeshbhai Jordaar, which is slated to hit theatres in October.
                    </p>
                    <input class="button" type="button" value="Vote">
                </div>
                <div class="acterimg"><img src="346px-Ranveer_Singh_promoting_Bajirao_Mastani.jpg" alt="img not supported">
                </div>
            </div>
            <div class="acter">
            <div class="acterimg"><img src="Salman_Khan_at_Renault_Star_Guild_Awards.jpg" alt="img not supported"></div>
            <div class="acterabt">
                <h2 class="acterh2">Salman Khan</h2>
                
                <p>Bhai will not have his trademark Eid release this year with Radhe, but it???s still expected to hit
                    theatres later this year. This means that we might not get to see Kick 2 this year, which was
                    rumored to
                    release in December.</p>
                    <input class="button" type="button" value="Vote">
                </div>
            </div>
            <div class="acter">
                <div class="acterabt">
                    <h2 class="acterh2"> ShahRukh Khan</h2>
                    
                    <p>ShahRukh Khan.</p>
                    
                    <div class="acterimg"><img src="335px-Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg"
                        alt="img not supported"></div>
                        
                        
                        <input class="button" type="button" value="Vote">
                    </div>
                </div>
                <div class="acter">
                    <div class="acterimg"><img src="354px-Shahid,_Alia,_and_Katrina_at_IIFA_2017_(cropped).jpg"
                        alt="img not supported"></div>
                        <div class="acterabt">
                            <h2 class="acterh2">Shahid Kapoor</h2>
                            
                            <p>After making quite an impression in and as Kabir Singh in 2019, Shahid is set to start in the remake
                                of yet another South film, Jersey. Titled the same in Hindi, the movie might release by the end of
                                August.</p>
                                <input class="button" type="button" value="Vote">
                </div>
            </div>
            <div class="acter">
                <div class="acterabt">
                    <h2 class="acterh2"> Amitabh Bachchan</h2>
                    
                    <p>Amitabh will also be seen alongside Ayushmann in Gulabo Sitabo, followed by Chehre, which has been
                        pushed indefinitely. Brahmastra could possibly be pushed again to next year.
                        Want to see the movies that released in 2020? Here???s a list of all the releases available online.
                        Stay home, stay safe, and keep bingeing!</p>
                        
                        <div class="acterimg"><img src="251px-Amitabh_Bachchan_KBC5_Press.jpg"
                            alt="img not supported"></div>
                            <input class="button" type="button" value="Vote">
                        </div>
                    </div>
                    
                    
                    
                    
                    -->
                </div>
            </section>
</body>
</html>
