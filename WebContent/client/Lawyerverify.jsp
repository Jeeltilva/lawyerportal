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
	int id;
	String EmailID=request.getParameter("email");
	String Password=request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
	Statement s=c.createStatement();
	
		ResultSet rs=s.executeQuery("SELECT Email_Id,Password,Lawyer_Id FROM Lawyer_Data Where Email_Id='"+EmailID+"' AND Password='"+Password+"'");
		if(rs.next())
		{
			id=rs.getInt("Lawyer_Id");
			session.setAttribute("ID",id);
			response.sendRedirect("index.jsp");
		}
		else
		{	
			session.setAttribute("x", "Incorrect mobileno or password");
			response.sendRedirect("LawyerLogin.jsp");
		}
	
	
	
	s.close();
	c.close();
	%>
</body>
</html>