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
	int loginid;
	String lawyer="lawyer";
	int id;
	String AreaOfPractice="";
	String FName=request.getParameter("fname");
	String LName=request.getParameter("lname");
	String Gender=request.getParameter("gender");
	String EmailID=request.getParameter("emailid");
	String MobileNo=request.getParameter("mobileno");
	String Nationality=request.getParameter("nationality");
	String City=request.getParameter("city");
	String Address=request.getParameter("address");
	String CouncilNo=request.getParameter("councilno");
	String University=request.getParameter("university");
	String Year=request.getParameter("year");
	String areaprac[]=request.getParameterValues("prac[]");	
	for(int i=0;i<areaprac.length;i++)
	{
		if(i==0)
		{
			AreaOfPractice=areaprac[i];
		}
		else
		{
			AreaOfPractice=AreaOfPractice+","+areaprac[i];
		}
		
	}

	String Profile=request.getParameter("profile");
	String Password=request.getParameter("password");
	String ConPassword=request.getParameter("conpassword");
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
	Statement s=c.createStatement();
	int b=s.executeUpdate("insert into Login (Email_Id,Password,Role) values ('"+EmailID+"','"+Password+"','"+lawyer+"')");
	ResultSet rs=s.executeQuery("select * from Login where Email_Id='"+EmailID+"' AND Password='"+Password+"'");
	if(rs.next())
	{
		loginid=rs.getInt("Id");
		int a=s.executeUpdate("INSERT INTO Lawyer_Data(First_Name,Last_Name,Gender,Email_Id,Mobile_No,Nationality,City,Address,Council_No,University_Name,Year,AreaOfPrac,Login_Id) VALUES('"+FName+"','"+LName+"','"+Gender+"','"+EmailID+"','"+MobileNo+"','"+Nationality+"','"+City+"','"+Address+"','"+CouncilNo+"','"+University+"','"+Year+"','"+AreaOfPractice+"','"+loginid+"')");
		if(a>0)
		{
			response.sendRedirect("Login.jsp");
		}
		else if(a!=0)
		{
				response.sendRedirect("signuplawyer.jsp");
		}
	}
	%>
</body>
</html>