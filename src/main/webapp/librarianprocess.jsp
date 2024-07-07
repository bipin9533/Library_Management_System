<%@ page language="java" import="java.sql.*"%>
<%
String name=request.getParameter("username");
String pass=request.getParameter("password");
if(name.equals("admin01")&& pass.equals("admin01")){
%>
<jsp:include page="admin.jsp"/>	
<% HttpSession s=request.getSession();
}else{
%>
	<jsp:include page="logoutpage.jsp"/>
<%} %>