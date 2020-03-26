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
	String id;
	String role="";
	
	String EmailID=request.getParameter("email");
	String Password=request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
	Statement s=c.createStatement();
	ResultSet resultset=s.executeQuery("select * from Login where Email_Id='"+EmailID+"' AND Password='"+Password+"'");
		if(resultset.next())
		{
			role=resultset.getString("Role");
			if(role.equals("client"))
			{
				ResultSet rs=s.executeQuery("SELECT Email_Id,Password,Id FROM Login Where Email_Id='"+EmailID+"' AND Password='"+Password+"'");
				if(rs.next())
				{
					id=rs.getString("Id");
					session.setAttribute("cid",id);
					response.sendRedirect("../client/index.jsp");
				}
				
			}
			else if(role.equals("lawyer"))
			{
				ResultSet rs=s.executeQuery("SELECT Email_Id,Password,Id FROM Login Where Email_Id='"+EmailID+"' AND Password='"+Password+"'");
				if(rs.next())
				{
					id=rs.getString("Id");
					session.setAttribute("ID",id);
					response.sendRedirect("index.jsp");
				}
				
			}
			else
			{	
				session.setAttribute("x", "Incorrect Email Id or Password");
				response.sendRedirect("Login.jsp");
			}
		
	}
		
	
	
	s.close();
	c.close();
	%>
</body>
</html>