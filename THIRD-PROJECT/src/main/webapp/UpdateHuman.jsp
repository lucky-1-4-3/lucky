<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.otz.Utility.DbConnection"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container col-md-5 pt-5">
		<div class="row">
			<div class="card">
				<div class="card-body">
				
<% 	
    int hid=Integer.parseInt(request.getParameter("hid"));
    Connection  con = DbConnection.getCon();
    String query="select hid,firstname,lastname,country,gender from human where hid=?";
    PreparedStatement ps = con.prepareStatement(query);
    ps.setInt(1,hid);
    ResultSet rs =ps.executeQuery(); 
    while(rs.next()){
 %>
              <h5 class="card-type">Update Human</h5>
				<form action="Update&Save.jsp">
					
					<!-- On tables -->
				
					<div class="mb-3">
						<label for="fname" class="form-label">First Name</label> 
						<input type="text" class="form-control" id="fname" value="<%=rs.getString(2)%>">
						<input type="hidden" name="hid" value="<%=rs.getInt(1)%>">
					</div>
					<div class="mb-3">
						<label for="lname" class="form-label">Last Name</label> 
						<input type="text" class="form-control" name="lname" value="<%=rs.getString(3)%>" id="lname">
					</div>
					<div class="mb-3">
						<label for="country" class="form-label">Country</label> 
						<input type="text" class="form-control" name="country" value="<%=rs.getString(4)%>" id="gender">
					</div>
					<div class="mb-3">
						<label for="gender" class="form-label">Gender</label> 
						<input type="text" class="form-control" name="gender" value="<%=rs.getString(5)%>" id="country">
					</div>
					<div class="mb-3">
						<input type="submit" class="form-control btn btn-info" value="Update">
					</div>
					
					</form>	
					
    <%   //Angular Bracket <Scriplet Tag>
    }
    %>				
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous">
	</script>
</body>
</html>