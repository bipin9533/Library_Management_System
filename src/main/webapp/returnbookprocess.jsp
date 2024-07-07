<%@ page language="java" import="java.sql.*"%>
<%
String bookId=request.getParameter("bookId");
String studentId=request.getParameter("studentId");
String issueDate=request.getParameter("issueDate");
String dueDate=request.getParameter("dueDate");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","Ashu@7371");
	Statement st=con.createStatement();
	st.executeUpdate("update issue set returnBook='YES' where bookId='"+bookId+"' and studentId='"+studentId+"' and issueDate='"+issueDate+"' and dueDate='"+dueDate+"'");
%>
    <jsp:include page="admin.jsp"/>
<%}catch(Exception e){
 out.println("connection not established");
out.println(e);
}
%>