<%-- 
    Document   : bestmovie
    Created on : 31 Mar, 2021, 5:18:53 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Best movie of the year</title>
    </head>
    <body>
        <%
            Connection connvote = null;
                    PreparedStatement psvote = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    connvote = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    psvote = connvote.prepareStatement("select * from best_movie where user='"+session.getAttribute("userid")+"'");// where name='" + request.getParameter("userid") + "'");
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
        
        
        
        
        
        
        
        <section class="movies">

            <div class="bestmovie" id="bestmovie">
                <h1 class="nominees">Best movie of the year nominees</h1>

                <%
                    Connection conn = null;
                    PreparedStatement ps = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    ps = conn.prepareStatement("select * from movie");// where name='" + request.getParameter("userid") + "'");
                    ResultSet rs = ps.executeQuery();
                    int i = 0;
                    while (rs.next()) {
                        
                        i++;
 
%>
                <div class="movies">
                    <%
                        if (i % 2 != 0) {%>     
                    <div class="movieimg" >

                        <img src="upload/<%=rs.getString("movie_image")%>" alt="img not supported"></div>
                        <%
                            }
                        %>
                    <div class="movieabt">
                        <h2 class="movieh2"><%=rs.getString("movie_name")%></h2>

                        <p><%=rs.getString("movie_about")%></p>
                        <% if(!isvotedone)
                        {%>
                        <a href="vote?movie_name=<%=rs.getString("movie_name")%>&userid=<%=session.getAttribute("userid")%>" class="button" >vote</a>
                   
                        
                         
                   <% }
                   else
{out.print("<h3>you already voted for best movie</h3>");}
                   
                   %>
                   
                    </div>
                    <%
                          if (i % 2 == 0) {%>     
                    <div class="movieimg" >
                        <img src="upload/<%=rs.getString("movie_image")%>" alt="img not supported">
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
                <!--                <div class="movies">
                                    <div class="movieabt">
                                        <h2 class="movieh2">Street Dancer 3D</h2>
                                        
                                        <p>Street Dancer 3D is a 2020 Indian Hindi-language dance film directed by Remo D'Souza. It is produced
                                            by Bhushan Kumar, Krishan Kumar and Lizelle D'Souza under the banners T-Series and Remo D'Souza
                                            Entertainment. ... The story explores a dance competition between some Indian and Pakistani dancers.
                                            It was theatrically released in India on 24 January 2020.
                                        </p>
                                        <input class="button" type="button" value="Vote">
                                    </div>
                                    <div class="movieimg"><img src="Street_Dancer_3D_poster.jpg" alt="img not supported"></div>
                                </div>
                                <div class="movies">
                                    <div class="movieimg"><img src="Baaghi_3_Film_Poster.jpg" alt="img not supported"></div>
                                    <div class="movieabt">
                                        <h2 class="movieh2">Baaghi 3</h2>
                                        
                                        <p>Baaghi 3 is a 2020 Indian Hindi-language action thriller film directed by Ahmed Khan. Produced by
                                            Nadiadwala Grandson Entertainment and Fox Star Studios, it is a sequel to Baaghi (2016) and Baaghi 2
                                            (2018) and the third film in the Baaghi film series. The film stars Tiger Shroff, Riteish Deshmukh,
                                            Shraddha Kapoor and Ankita Lokhande.[4][5] A remake of the 2012 Tamil-language film Vettai,[6] the
                                            film follows Ranveer "Ronnie" Chaturvedi, a young man who protects his timid brother Vikram
                                            Chaturvedi from everything.
                                            Baaghi 3 was theatrically released in India on 6 March 2020.</p>
                                            <input class="button" type="button" value="Vote">
                                        </div>
                                </div>
                                <div class="movies">
                                    <div class="movieabt">
                                        <h2 class="movieh2">Shubh Mangal Zyada Saavdhan</h2>
                                        
                                        <p>A spin-off to the 2017 film Shubh Mangal Saavdhan, whose script was also written by Kewalya, it stars
                                            Ayushmann Khurrana, Jitendra Kumar, Neena Gupta and Gajraj Rao. The film tells the story of a gay
                                            man and his partner, who have trouble convincing the former's parents of their relation.
                                            Filming wrapped on 16 December 2019 in Varanasi and it was theatrically released in India on 21
                                            February 2020.
                                        </p>
                                        <input class="button" type="button" value="Vote">
                                    </div>
                                    <div class="movieimg"><img src="Shubh_Mangal_Zyada_Saavdhan_poster.jpg" alt="img not supported"></div>
                                </div>
                                <div class="movies">
                                    <div class="movieimg"><img src="Malang_film_poster.jpg" alt="img not supported"></div>
                                    <div class="movieabt">
                                        <h2 class="movieh2">Malang</h2>
                                        
                                        <p>Malang (transl. Vagrant/Wanderer) is a 2020 Indian Hindi-language romantic action thriller film
                                            directed by Mohit Suri and produced by T-Series in collaboration with Luv Films and Northern Lights
                                            Entertainment with distribution by Yash Raj Films. It stars Aditya Roy Kapur, Disha Patani, Anil
                                            Kapoor and Kunal Khemu.
                                            Initially announced as a Valentine's Day 2020 release, Malang was preponed by 1 week to avoid clash
                                            with Love Aaj Kal. It was finally released worldwide in cinemas on 7 February 2020.[</p>
                                            <input class="button" type="button" value="Vote">
                                        </div>
                                    </div>
                                    <div class="movies">
                                        <div class="movieabt">
                                            <h2 class="movieh2">Chhapaak</h2>
                                            
                                            <p>Chhapaak ( transl. Splash) is a 2020 Indian Hindi-language drama film based on the life of acid
                                                attack survivor Laxmi Agarwal. Directed by Meghna Gulzar, the film stars Deepika Padukone in leading
                                                role of a character inspired by Agarwal alongside Vikrant Massey and Madhurjeet Sarghi.
                                                Shooting took place from March to June 2019 in locations near New Delhi and Mumbai. Released
                                                worldwide on 10 January 2020 in cinemas, the film was declared tax-free in Chhattisgarh, Madhya
                                                Pradesh and Rajasthan by Indian government.
                                            </p>
                                            <input class="button" type="button" value="Vote">
                                        </div>
                                        <div class="movieimg"><img src="Chhapaak_film_poster.jpg" alt="img not supported"></div>
                                    </div>
                            <div class="movies">
                                <div class="movieimg"><img src="Love_Aaj_Kal_film_poster.jpg" alt="img not supported"></div>
                                <div class="movieabt">
                                    <h2 class="movieh2">Love Aaj Kal</h2>
                                    
                                    <p>Love Aaj Kal (transl. Love nowadays) is a 2020 Indian Hindi-language romantic drama film directed by
                                        Imtiaz Ali and starring Kartik Aaryan and Sara Ali Khan. Principal photography began in the first
                                        half of March 2019 and ended in July 2019.[3][4] It was released in India on Valentine's Day
                                        2020.[5] It was the spiritual successor to the 2009 film of the same name, also directed by Imtiaz
                                        Ali.[</p>
                                        <input class="button" type="button" value="Vote">
                                    </div>
                                </div>
                                <div class="movies">
                                    <div class="movieabt">
                                        <h2 class="movieh2">Jawaani Jaaneman</h2>
                                        
                                        <p>Jawaani Jaaneman is a 2020 Indian Hindi-language comedy-drama film directed by Nitin Kakkar, and
                                            produced by Jackky Bhagnani, Deepshikha Deshmukh, Jay Shewakramani and lead actor Saif Ali Khan
                                            under the banners of Pooja Entertainment, Black Knight Films and Northern Lights Films.The film
                                            revolves
                                            around Jazz, a property broker and party-animal in London, who has to confront a daughter he never
                                            knew he had, who is also pregnant.
                                            Principal photography of the film took place from 14 June to 24 August 2019 in London, England. The
                                            film was theatrically released in India on 31 January 2020 to mixed-to-positive reviews, and was a
                                        moderate success at the box office.
                                    </p>
                                    <input class="button" type="button" value="Vote">
                                </div>
                                <div class="movieimg"><img src="Jawaani_Jaaneman_film_poster.jpg" alt="img not supported"></div>
                            </div>
                            <div class="movies">
                                <div class="movieimg"><img src="Thappad_film_poster.jpg" alt="img not supported"></div>
                                <div class="movieabt">
                                    <h2 class="movieh2">Thappad</h2>
                                    
                                    <p>Thappad (transl. Slap) is a 2020 Indian Hindi-language drama film directed by Anubhav Sinha, which he
                                        also co-produced with Bhushan Kumar of T-Series. The film, starring Taapsee Pannu, was released in
                                        theatres on 28 February 2020.</p>
                                        <input class="button" type="button" value="Vote">
                                    </div>
                                </div>
                                <div class="movies">
                                    <div class="movieabt">
                                        <h2 class="movieh2">Panga</h2>
                                        
                                        <p>Panga (transl. Clash) is a 2020 Indian Hindi-language sports film directed and co-written by Ashwiny
                                            Iyer Tiwari and produced by Fox Star Studios, based on a script written by her and Nikhil Mehrotra,
                                            with Nitesh Tiwari providing additional script inputs. Kangana Ranaut and Jassie Gill star in the
                                            lead roles, while Yagya Bhasin, Neena Gupta, Richa Chadha, Megha Burman and Smita Tambe appearing in
                                            supporting roles.
                                            Shot largely in Panaji, Bhopal, Mumbai and Kolkata, the film was released in India on 24 January
                                            2020. The film received positive reviews, praise for Ranaut's performance, and grossed ₹41.71
                                            crore.
                                        </p>
                                        <input class="button" type="button" value="Vote">
                                    </div>
                                    <div class="movieimg"><img src="Panga_film_poster.jpg" alt="img not supported"></div>
                                </div>-->

            </div>
        </section>    
    </body>
</html>
