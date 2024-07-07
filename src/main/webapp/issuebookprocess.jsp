<%@ page language="java" import="java.sql.*"%>
<%
String bookId=request.getParameter("bookId");
String studentId=request.getParameter("studentId");
String issueDate=request.getParameter("issueDate");
String dueDate=request.getParameter("dueDate");
String returnBook="NO";
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","Ashu@7371");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from book where bookId='"+bookId+"'");
            if(rs.next()){
                ResultSet rs1=st.executeQuery("select * from student where studentId='"+studentId+"'");
                if(rs1.next()){
                    st.executeUpdate("insert into issue values('"+bookId+"','"+studentId+"','"+issueDate+"','"+dueDate+"','"+returnBook+"')");
 %>
		            <jsp:include page="admin.jsp"/>
<%	             }else{
	                out.println("wrong studentId");    
                 }
}else{
	out.println("bookId not registered");
}HttpSession s=request.getSession();
}catch(Exception e){
 out.println("connection not established");
out.println(e);
}
%>	