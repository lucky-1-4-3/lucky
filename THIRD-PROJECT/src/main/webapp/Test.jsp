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

   String gender=request.getParameter("gender");
   String firstname=request.getParameter("firstname");
   String lastname=request.getParameter("lastname");
   String country=request.getParameter("country");
   
   Connection  con = DbConnection.getCon();  /*Database Connection 
              ->  "DbConnection" is the class name that we have created in the utility package
              ->   Connection is pre defined in the sql package */
                                               
   String query="insert into human(firstname,lastname,country,gender)values(?,?,?,?)"; //the query whic operation will occure 
   PreparedStatement ps = con.prepareStatement(query);  //An object that represents a precompiled SQL statement. (PreparedStatement)
   ps.setString(1,firstname);
   ps.setString(2,lastname);
   ps.setString(3,country);
   ps.setString(4,gender);
   
   
   ps.executeUpdate();//To write/execute the value which will display 
   con.close();

%>

</body>
</html>