<html>
<head>
	<style>
	 #radioButtons{
  margin: 5px 0 10px 0;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #016a70;
  color: white;
  padding: 14px 20px;
  margin-top: 12px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.view{
width: 100%;
  background-color: blue;
  color: white;
  padding: 14px 20px;
  margin-top: 12px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #018c94;
}

div {
  margin: auto;
  width: 30%;
  border-radius: 5px;
  background-color: #ededed;
  padding: 20px;
  font-family: 'Work Sans', sans-serif;
}
	</style>
	<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@200;300&display=swap" rel="stylesheet">
</head>
<body>


<div>
  <form action="Test.jsp">
    <section id="radioButtons">
    <input type="radio" id="male" name="gender" value="male">
    <label for="male">Male</label>
    <input type="radio" id="female" name="gender" value="female">
   <label for="female">Female</label><br>
    </section>
    
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name...">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name...">

    <label for="country">Country</label> 
            <select id="country" name="country">
				<option value="france">France</option>
				<option value="germany">Germany</option>
				<option value="italy">Italy</option>
				<option value="spain">Spain</option>
				<option value="uk">UK</option>
			</select> 
			<input type="submit" value="Submit">
   
   <br><br>
    <a href="viewHuman.jsp" class="view">View Human</a>
    
  </form>
</div>
</body>
</html>
