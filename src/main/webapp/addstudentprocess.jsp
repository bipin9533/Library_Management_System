<%@ page language="java" import="java.sql.*"%>
<%
String studentId=request.getParameter("studentId");
String name=request.getParameter("name");
String phoneNumber=request.getParameter("phoneNumber");
String courseName=request.getParameter("courseName");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","Ashu@7371");
	Statement st=con.createStatement();
    st.executeUpdate("insert into student values('"+studentId+"','"+name+"','"+phoneNumber+"','"+courseName+"')");
	 %>
		 <jsp:include page="admin.jsp"/>
		 <%  HttpSession s=request.getSession();
}catch(Exception e){
 out.println("studentId already exist");
out.println(e);
}
%>		 