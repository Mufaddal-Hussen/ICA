<%-- 
    Document   : admin1
    Created on : 19 Apr, 2021, 11:29:40 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style2.css">
</head>

<body>
    <div class="entrymain">
        <p>Please select ctegorie:</p>
        <input type="radio" id="movie" name="ctgr" value="Best Movie" onclick="entry1()" checked>
        <label for="movie">Best Movie</label>
        <input type="radio" id="actor" name="ctgr" value="Best Actor" onclick="entry2()">
        <label for="actor">Best Actor</label>
        <input type="radio" id="actress" name="ctgr" value="Best Actress" onclick="entry3()">
        <label for="actress">Best Actress</label>
        <input type="radio" id="song" name="ctgr" value="Best Song" onclick="entry4()">
        <label for="song">Best Song</label>
        <input type="radio" id="singer" name="ctgr" value="Best Singer" onclick="entry5()">
        <label for="singer">Best Singer</label>
        <input type="radio" id="show" name="ctgr" value="Best TV Show" onclick="entry6()">
        <label for="show">Best TV Show</label><br>




        <div id="moviediv">
            <form action="addmovie" method="post" enctype="multipart/form-data">

                <h1 class="entryh1">Enter Best movie of the year nominees</h1>
                <label>Enter movie name </label>
                <input type="text" name="moviename"><br>
                <label>Enter about movie</label>
                <textarea rows="10" cols="20" name="movieabout">
        </textarea>
                <br>
                <label>Enter movie image </label>
                <input type="file" name="movieimage"><br>
                <input type="submit" value="Enter"><br>

            </form>
            
<!--            <table border="5px" cellspacing="5px" cellpadding="5px">

            <th> Movie_name </th>
            <th>Movie_about</th>
            <th>Action</th>
            <th>Action</th>
            <%
                Connection conn = null;
                PreparedStatement ps = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps = conn.prepareStatement("select * from movie");
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
            %>
            <tr>
             <td> <%=rs.getString(1)%></td>
             <td><%=rs.getString(2)%></td>
                <td><a href="delete?name=<%=rs.getString(1)%>">Delete</a></td>
                <td><a href="newjsp2.jsp?name=<%=rs.getString(1)%>">Update</a></td>
            
            </tr>

        <%
            }

        %>
    </table>
            -->
            
        </div>

        <div id="actordiv">
            <form action="addactor"  method="post" enctype="multipart/form-data">
                
            <h1 class="entryh1">Enter best Actor of the year nominees</h1>
            <label>Enter Actor name </label>
            <input type="text"><br>
            <label>Enter about Actor</label>
            <input type="text"><br>
            <label>Enter Actor image </label>
            <input type="file"><br>
            <input type="submit" value="Enter"><br>
            </form>
            
<!--            <table border="5px" cellspacing="5px" cellpadding="5px">

            <th> Actor_name </th>
            <th>Actor_about</th>
            <th>Action</th>
            <th>Action</th>
            <%
               Connection conn2 = null;
                PreparedStatement ps2 = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps2 = conn2.prepareStatement("select * from actor");
              ResultSet rs2 = ps2.executeQuery();

                while (rs2.next()) {
            %>
            <tr>
             <td> <%=rs2.getString(1)%></td>
             <td><%=rs2.getString(2)%></td>
                <td><a href="delete?name=<%=rs2.getString(1)%>">Delete</a></td>
                <td><a href="newjsp2.jsp?name=<%=rs2.getString(1)%>">Update</a></td>
            
            </tr>

        <%
            }

        %>
    </table>
            -->

        </div>


        <div id="actressdiv">
            <form action="addactress"  method="post" enctype="multipart/form-data">
            <h1 class="entryh1">Enter best Actress of the year nominees</h1>
            <label>Enter Actress name </label>
            <input type="text"><br>
            <label>Enter about Actress</label>
            <input type="text"><br>
            <label>Enter Actress image </label>
            <input type="file"><br>
            <input type="submit" value="Enter"><br>
            </form>

            
<!--             <table border="5px" cellspacing="5px" cellpadding="5px">

            <th> Actress_name </th>
            <th>Actress_about</th>
            <th>Action</th>
            <th>Action</th>
            <%
               Connection conn3 = null;
                PreparedStatement ps3 = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps3 = conn3.prepareStatement("select * from actress");
              ResultSet rs3 = ps3.executeQuery();

                while (rs3.next()) {
            %>
            <tr>
             <td> <%=rs3.getString(1)%></td>
             <td><%=rs3.getString(2)%></td>
                <td><a href="delete?name=<%=rs3.getString(1)%>">Delete</a></td>
                <td><a href="newjsp2.jsp?name=<%=rs3.getString(1)%>">Update</a></td>
            
            </tr>

        <%
            }

        %>
    </table>-->


        </div>


        <div id="songdiv">
            <form action="addsong"  method="post" enctype="multipart/form-data">
            <h1 class="entryh1">Enter best song of the year nominees</h1>
            <label>Enter Song name </label>
            <input type="text"><br>
            <label>Enter about Song</label>
            <input type="text"><br>
            <label>Enter Song image </label>
            <input type="file"><br>
            <input type="submit" value="Enter"><br>
            </form>
            
<!--             <table border="5px" cellspacing="5px" cellpadding="5px">

            <th> Song_name </th>
            <th>Song_about</th>
            <th>Action</th>
            <th>Action</th>
            <%
               Connection conn4 = null;
                PreparedStatement ps4 = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps4 = conn4.prepareStatement("select * from song");
              ResultSet rs4 = ps4.executeQuery();

                while (rs4.next()) {
            %>
            <tr>
             <td> <%=rs4.getString(1)%></td>
             <td><%=rs4.getString(2)%></td>
                <td><a href="delete?name=<%=rs4.getString(1)%>">Delete</a></td>
                <td><a href="newjsp2.jsp?name=<%=rs4.getString(1)%>">Update</a></td>
            
            </tr>

        <%
            }

        %>
    </table>
            -->
            
        </div>



        <div id="singerdiv">
            <form action="addsinger"  method="post" enctype="multipart/form-data">
            <h1 class="entryh1">Enter best Singer of the year nominees</h1>
            <label>Enter Singer name </label>
            <input type="text"><br>
            <label>Enter about Singer</label>
            <input type="text"><br>
            <label>Enter Singer image </label>
            <input type="file"><br>
            <input type="submit" value="Enter"><br>
            </form>
            
<!--             <table border="5px" cellspacing="5px" cellpadding="5px">

            <th> Singer_name </th>
            <th>Singer_about</th>
            <th>Action</th>
            <th>Action</th>
            <%
               Connection conn5 = null;
                PreparedStatement ps5 = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn5 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps2 = conn5.prepareStatement("select * from singer");
              ResultSet rs5 = ps5.executeQuery();

                while (rs5.next()) {
            %>
            <tr>
             <td> <%=rs5.getString(1)%></td>
             <td><%=rs5.getString(2)%></td>
                <td><a href="delete?name=<%=rs5.getString(1)%>">Delete</a></td>
                <td><a href="newjsp2.jsp?name=<%=rs5.getString(1)%>">Update</a></td>
            
            </tr>

        <%
            }

        %>
    </table>-->
            
            
        </div>




        <div id="showdiv">
            <form action="addshow"  method="post" enctype="multipart/form-data">
            <h1 class="entryh1">Enter best TV Show of the year nominees</h1>
            <label>Enter TV Show name </label>
            <input type="text"><br>
            <label>Enter about TV Shhow</label>
            <input type="text"><br>
            <label>Enter TV Show image </label>
            <input type="file"><br>
            <input type="submit" value="Enter"><br>
            </form>
            
<!--             <table border="5px" cellspacing="5px" cellpadding="5px">

            <th> TV show_name </th>
            <th>TV show_about</th>
            <th>Action</th>
            <th>Action</th>
            <%
               Connection conn6 = null;
                PreparedStatement ps6 = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn6 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps6 = conn6.prepareStatement("select * from tvshow");
              ResultSet rs6 = ps6.executeQuery();

                while (rs6.next()) {
            %>
            <tr>
             <td> <%=rs6.getString(1)%></td>
             <td><%=rs6.getString(2)%></td>
                <td><a href="delete?name=<%=rs6.getString(1)%>">Delete</a></td>
                <td><a href="newjsp2.jsp?name=<%=rs6.getString(1)%>">Update</a></td>
            
            </tr>

        <%
            }

        %>
    </table>-->
            
            
        </div>



        <script type="text/javascript" src="script.js"></script>

    </div>
</body>

</html>
