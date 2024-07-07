<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>VIEW BOOKS</title>
    <style>
         *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        html,body{
            height: 100%;
            width: 100%;
            background-image: url("images/adminbg.jpg");
            }
        table tr:hover{
            background: #fff;
            color: #000;
        }
    </style>
</head>
<body>
<center>
    <h1 style="font-size:3rem;color: #fff;width: 100%;text-align: center;padding-bottom:1rem;">VIEW STUDENTS</h1>
      <table style="width: 74rem;font-size: 2.3rem;color: #fff;">
       <tr style="hover{background:#fff;color:#000};">
       <th style="border: 1px solid #fff;background-color: #000">BOOK ID</th>
       <th style="border: 1px solid #fff;background-color: #000">BOOK NAME</th>
       <th style="border: 1px solid #fff;background-color: #000">AUTHOR</th>
       <th style="border: 1px solid #fff;background-color: #000">PUBLISH YEAR</th>
       <th style="border: 1px solid #fff;background-color: #000">PRICE</th>
       </tr>
       <%
       try{
    	   Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","Ashu@7371");
    		Statement st=con.createStatement();
    		ResultSet rs=st.executeQuery("select * from book");
    		while(rs.next()){
    			%>
    			<tr>
    			<td style="border: 1px solid #fff;"><%= rs.getString(1) %></td>
    			<td style="border: 1px solid #fff;"><%= rs.getString(2) %></td>
    			<td style="border: 1px solid #fff;"><%= rs.getString(3) %></td>
    			<td style="border: 1px solid #fff;"><%= rs.getString(4) %></td>
    			<td style="border: 1px solid #fff;"><%= rs.getString(5) %></td>
    			</tr>
    			<%
    		}
       }
       catch(Exception e){
    	   out.println("connection error");
       }
       %>
      </table>
 </center>
</body>
</html>