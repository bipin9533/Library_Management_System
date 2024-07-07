<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>VIEW ISSUED BOOKS</title>
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
    <h1 style="font-size:3rem;color: #fff;width: 100%;text-align: center;padding-bottom:1rem;">ISSUED BOOKS</h1>
      <table style="width: 74rem;font-size: 2.3rem;color: #fff;">
       <tr style="hover{background:#fff;color:#000};">
       <th style="border: 1px solid #fff;background-color: #000">STUDENT ID</th>
       <th style="border: 1px solid #fff;background-color: #000">STUDENT NAME</th>
       <th style="border: 1px solid #fff;background-color: #000">BOOK ID</th>
       <th style="border: 1px solid #fff;background-color: #000">BOOK NAME</th>
       <th style="border: 1px solid #fff;background-color: #000">ISSUE DATE</th>
       <th style="border: 1px solid #fff;background-color: #000">DUE DATE</th>
       </tr>
       <%
       try{
    	   Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","Ashu@7371");
    		Statement st=con.createStatement();
    		ResultSet rs=st.executeQuery("select issue.studentId,student.name,issue.bookId,book.name,issue.issueDate,issue.dueDate from student inner join book inner join issue where book.bookId=issue.bookId and student.studentId=issue.studentId and issue.returnBook='NO'");
    		while(rs.next()){
    			%>
    			<tr>
    			<td style="border: 1px solid #fff;"><%= rs.getString("studentId") %></td>
    			<td style="border: 1px solid #fff;"><%= rs.getString("name") %></td>
    			<td style="border: 1px solid #fff;"><%= rs.getString("bookId") %></td>
    			<td style="border: 1px solid #fff;"><%= rs.getString("book.name") %></td>
    			<td style="border: 1px solid #fff;"><%= rs.getString("issueDate") %></td>
    			<td style="border: 1px solid #fff;"><%= rs.getString("dueDate") %></td>
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