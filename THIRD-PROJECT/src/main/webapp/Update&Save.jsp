<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.otz.Utility.DbConnection"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
  int status =0;
  int hid=Integer.parseInt(request.getParameter("hid"));
  
   String gender=request.getParameter("fname");
   String firstname=request.getParameter("lname");
   String lastname=request.getParameter("country");
   String country=request.getParameter("gender");
   
   Connection con = DbConnection.getCon();
   String query="update human set firstname=?,lastname=?,country=?,gender=? where hid=?)";
   PreparedStatement ps = con.prepareStatement(query);
   ps.setString(1,firstname);
   ps.setString(2,lastname);
   ps.setString(3,country);
   ps.setString(4,gender);
   ps.setInt(5,hid);  
   status=ps.executeUpdate();
   con.close();
   if(status>0){
		  response.sendRedirect("viewHuman.jsp");
	  }
	  else{
	  %>
	  <h1>Update failed</h1>
	  <%
	  }  
	  %>

</body>
</html>