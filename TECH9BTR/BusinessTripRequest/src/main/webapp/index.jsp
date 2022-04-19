<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="css/login_style.css" rel="stylesheet" type="text/css">
  <title>Login</title>
  <style>
  .button
{
  text-align: center;
  margin:0 auto;
  align:center;

}
  </style>
</head>

<body>
	<% session.invalidate(); %>
	
	<div class="login-box">
    <h2>Login</h2>
    
    <form method="post" action="login.jsp">
    
      <div class="user-box">
        <input type="text" name="email" required>
        <label>EmailId</label>
      </div>
      <div class="user-box">
        <input type="password" name="password" required>
        <label>Password</label>
      </div>
      <!-- <a href="#"><span></span>Submit</a> -->

     <input class="button" type="submit" name="submit" value="Login">
    </form>
  </div>
</body>
<script type="text/javascript">
   var status=document.getElementById("status");
   if(status=="success"{
	   console.log("Logged In");
   })

</script>
</html>