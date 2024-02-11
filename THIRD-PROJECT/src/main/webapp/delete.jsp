<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.otz.Utility.DbConnection" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
   int status=0;
   int hid=Integer.parseInt(request.getParameter("hid"));
   Connection  con = DbConnection.getCon();
   String query="delete from human where hid=?";
   PreparedStatement ps = con.prepareStatement(query);
   ps.setInt(1,hid);
   status=ps.executeUpdate();
   if(status>0){
	  response.sendRedirect("viewHuman.jsp");
   }
  else{
  %>
  <h1>Delete Failed</h1>
  <%
  }
  
  %>
</body>
</html>