<%@ page import="java.sql.*" %>
<%@ page language="java"%>
<%
String bookId=request.getParameter("bookId");
String name=request.getParameter("name");
String author=request.getParameter("author");
String publishYear=request.getParameter("publishYear");
String price=request.getParameter("price");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","Ashu@7371");
	Statement st=con.createStatement();
	st.executeUpdate("insert into book values('"+bookId+"','"+name+"','"+author+"','"+publishYear+"','"+price+"')");
	 %>
		 <jsp:include page="admin.jsp"/>
		 <%  HttpSession s=request.getSession();
}catch(Exception e){
 out.println("bookId already exist");
out.println(e);
}
%>		 