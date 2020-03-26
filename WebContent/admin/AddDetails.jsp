<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*,java.util.*,java.lang.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String caseid=(String)session.getAttribute("caseid");
	//String s1="";
	String s1=request.getParameter("editor1");

	Class.forName("com.mysql.jdbc.Driver");	
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
	Statement s=c.createStatement();
	
	String name=caseid;
	File f=new File(name+".txt");
	f.createNewFile();
	String file=application.getRealPath("/")+name+".txt";
	
	
	FileWriter fw=new FileWriter(f);
	fw.write(s1);
	fw.close();

	s.executeUpdate("INSERT INTO case_details Details value('"+file+"') where caseid='"+caseid+"'");
	response.sendRedirect("CaseInfoo.jsp?id1="+caseid);
	
%>
</body>
</html>