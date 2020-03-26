<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>get client data </title>
</head>
<body>
<%
	int loginid;
	String client="client";
	String firstname=request.getParameter("firstname");
	String lastname=request.getParameter("lastname");
	String emailid=request.getParameter("emailid");
	String password=request.getParameter("password");
	String phoneno=request.getParameter("phoneno");
	String gender=request.getParameter("gender");
	String city=request.getParameter("city");
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
	Statement s=c.createStatement();
	int b=s.executeUpdate("insert into Login (Email_Id,Password,Role) values ('"+emailid+"','"+password+"','"+client+"')");
	ResultSet rs=s.executeQuery("select * from Login where Email_Id='"+emailid+"' AND Password='"+password+"'");
	if(rs.next())
	{
		loginid=rs.getInt("Id");
		int a=s.executeUpdate("insert into Client_Data (First_Name,Last_Name,Email_Id,City,PhoneNo,Gender,Login_Id) values ('"+firstname+"','"+lastname+"','"+emailid+"','"+city+"','"+phoneno+"','"+gender+"','"+loginid+"')");
	
			if(a>0)
			{
				response.sendRedirect("../admin/Login.jsp");
			}
			else if(a!=0)
			{
					%>Error<%
			}
	}



%>
</body>
</html>