<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%String pdate="";
		String date=request.getParameter("next");
		String id=(String)session.getAttribute("caseid");
		String note=request.getParameter("note");
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
		Statement s=c.createStatement();
		ResultSet rs=s.executeQuery("SELECT Nexthearing from Case_Data WHERE Case_Id='"+id+"'");
		PreparedStatement pd=c.prepareStatement("INSERT INTO Previous_Hearing_Notes (Case_Id,Note,Date) Values ('"+id+"','"+note+"',?)");
		if(rs.next()){
			pdate=rs.getString("Nexthearing");
			pd.setString(1, pdate);
			
		}pd.executeUpdate();
		pd.close();
		
		s.executeUpdate("UPDATE Case_Data SET Nexthearing='"+date+"' WHERE Case_Id='"+id+"'");
		response.sendRedirect("CaseInfoo.jsp?id1="+id);
	%>
</body>
</html>