<%@ page language="java" import="java.sql.ResultSet" import="java.sql.Statement" import="java.sql.Connection" import="java.sql.DriverManager" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<% 
	String uemail=(String)session.getAttribute("email"); 
    out.println(uemail);
    
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sys as sysdba","root");
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from BATCH9BTR_USER_DETAILS where email_id='"+ uemail +"'");
	out.println(rs);
	//if(rs.next())
	//{
		//session.setAttribute("email", uemail);
		//response.sendRedirect("user/user-personal-detail.jsp");
	//}
	//else
	//{
		//response.sendRedirect("index.jsp");
	//}
	con.close();  
%>
</body>
</html>