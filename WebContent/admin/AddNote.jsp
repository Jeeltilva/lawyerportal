<%@page import="java.text.SimpleDateFormat"%>
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
	SimpleDateFormat df=new SimpleDateFormat("yy/MM/dd");
	java.util.Date date=new java.util.Date();
	//out.print(df.format(date));
	//String date=date.toString();
	 String note=request.getParameter("note");
	String id=(String)session.getAttribute("caseid");
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
	Statement s=c.createStatement();
	s.executeUpdate("INSERT INTO notes (Case_Id,note,Date) Values ('"+id+"','"+note+"','"+df.format(date)+"')");
	//session.removeAttribute("caseid");
	response.sendRedirect("CaseInfoo.jsp?id1="+id);
	 %>
</body>
</html>