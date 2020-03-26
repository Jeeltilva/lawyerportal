<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<% 
	String id;
	String lid=(String)session.getAttribute("LId1");
	id=(String)session.getAttribute("cid");
	String Forum=request.getParameter("forum");
	String casetype=request.getParameter("casetype");
	String description=request.getParameter("description");
	int status=0;
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
	Statement s=c.createStatement();
	int a=s.executeUpdate("INSERT INTO Case_Data(Lawyer_Id,Client_Id,Casetype,Courttype,Status,Description) VALUES('"+lid+"','"+id+"','"+casetype+"','"+Forum+"','"+status+"','"+description+"')");	
	//int a=s.executeUpdate("INSERT INTO case_info(lawyer_id,case_num,forum,case_type,case_year,date,Petitioner,Respondent) VALUES('"+id+"','"+Caseno+"','"+Forum+"','"+Category+"','"+Caseyear+"','"+Date+"','"+Petitioner+"','"+Respondent+"')");	
	if(a>0)
	{
		response.sendRedirect("../client/index.jsp");
	}	
	else
	{
		%>Error<%
	}	
		
	
	

	%>
</body>
</html>