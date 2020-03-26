<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
	String date=request.getParameter("previous");
	String note=request.getParameter("note");
	String id=(String)session.getAttribute("caseid");
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
	Statement s=c.createStatement();
	s.executeUpdate("INSERT INTO Previous_Hearing_Notes (Case_Id,Note,Date) Values ('"+id+"','"+note+"','"+date+"')");
	response.sendRedirect("CaseInfoo.jsp?id1="+id);
	%>
</body>
</html>