<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String judge=request.getParameter("judg");

	String caseid=(String)session.getAttribute("caseid");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
	Statement s=c.createStatement();
	
	s.executeUpdate("UPDATE case_data SET Status = 4 , judgement = '"+judge+"' WHERE Case_Id='"+caseid+"';");
	response.sendRedirect("Completedcases.jsp");
	
	
%>
	
</body>
</html>