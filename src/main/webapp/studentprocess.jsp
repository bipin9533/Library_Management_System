<%@ page import="java.sql.*" %>
<%@ page language="java" %>
<%
String studentid=request.getParameter("studentId");
String name=request.getParameter("userName");
String pass=request.getParameter("password");
try{
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","Ashu@7371");
 PreparedStatement ps=con.prepareStatement("select * from studentlogin where studentId=? and userName=? and password=?");
 ps.setString(1,studentid);
 ps.setString(2,name);
 ps.setString(3,pass);
 ResultSet rs=ps.executeQuery();
 while(rs.next()){
  if(rs.getString(1).equals(studentid) && rs.getString(2).equals(name)&&rs.getString(3).equals(pass)){
  %>
  <jsp:include page="studentpage.jsp"/>
  <% HttpSession s=request.getSession();
  }else{
  %>
  <jsp:include page="logoutpage.jsp"/>
  <%
  }
  }
  }catch(Exception ex){
  out.println(ex);
  }
%>