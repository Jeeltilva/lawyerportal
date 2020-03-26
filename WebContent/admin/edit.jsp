<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
	<%
		String caseid=(String)session.getAttribute("caseid");
		String caseno=request.getParameter("caseno");
		/* String date=request.getParameter("date"); */
		/* String note=request.getParameter("note"); */
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
		Statement s=c.createStatement();
		int a=s.executeUpdate("update  case_data  set   Case_No='"+caseno+"',Status=3 where Case_Id='"+caseid+"'");
		if(a>0)
		{
			response.sendRedirect("ViewNewCases.jsp");
		}
		else if(a!=0)
		{
				response.sendRedirect("edit.jsp");
		}
	%>
</body>
</html>