<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.otz.Utility.DbConnection" %>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Human</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container pt-5">
 <div class="row">
  <table class="table table-striped table-hover">
  
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Country</th>
      <th scope="col">Gender</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  
  <tbody>
   
    <%
   
    Connection  con = DbConnection.getCon();
    String query="select hid,firstname,lastname,country,gender from human";
    PreparedStatement ps = con.prepareStatement(query);
    ResultSet rs =ps.executeQuery(); 
    while(rs.next()){
   
 %>
    <tr>
      <th scope="row"><%=rs.getInt(1)%></th>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3) %></td>
      <td><%=rs.getString(4) %></td>
      <td><%=rs.getString(5)%></td>
      <td><a class="btn btn-primary" href="UpdateHuman.jsp?hid=<%=rs.getInt(1)%>">Edit</a></td>
      <td><a class="btn btn-danger" href="delete.jsp?hid=<%=rs.getInt(1)%>">Delete</a></td>
    </tr>
    <%
    }
    %>
  </tbody>
</table>
   </div>
</div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  
</body>
</html>