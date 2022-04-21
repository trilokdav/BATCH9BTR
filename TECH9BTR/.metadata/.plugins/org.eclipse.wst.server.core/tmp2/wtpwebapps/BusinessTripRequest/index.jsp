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
  
  .but {
  position: relative;
  display: inline-block;
  padding: 8px 16px;
  color: #ffffff;
  background: #754edd;
  border-radius: 15px;
  font-size: 14px;
  text-decoration: none;
  overflow: hidden;
  transition: .5s;
  margin-top: 20px;
  letter-spacing: 3px;
  border: none;
}

  .but:hover {
  background: #e2114f;
  color: #fff;
  border-radius: 15px;
  border: none;
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
     

     <input class="but" type="submit" name="submit" value="Login">
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