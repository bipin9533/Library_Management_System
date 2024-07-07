<%@ page import="java.sql.*" %>
<%@ page language="java" %>
<%
String studentid=request.getParameter("studentId");
String studentname=request.getParameter("name");
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","Ashu@7371");
 Statement st=con.createStatement();
 st.executeUpdate("insert into studentLogin values('"+studentid+"','"+username+"','"+password+"')");
  %>
		 <jsp:include page="admin.jsp"/>
		 <%  HttpSession s=request.getSession();
}catch(Exception e){
 out.println("bookId already exist");
out.println(e);
}
%>	