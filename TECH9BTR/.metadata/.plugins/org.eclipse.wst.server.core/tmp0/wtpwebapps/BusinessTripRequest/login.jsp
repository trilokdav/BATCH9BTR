<%@ page language="java" import="java.sql.ResultSet"
	import="java.sql.Statement" import="java.sql.Connection"
	import="java.sql.DriverManager"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@132.145.42.131:1521/Testdb_pdb1.evopaassub1.evopaasvcn.oraclevcn.com","trainee_schema","Trn__Schema_21");
	Statement st = con.createStatement();
	ResultSet rs;

	rs = st.executeQuery(
			"select * from BATCH9BTR_USER_DETAILS where email_id='" + email + "' and password='" + password + "'");

	out.println(rs);

	if (rs.next()) {
		session.setAttribute("email", email);
		response.sendRedirect("user/user-personal-detail.jsp");
	} else {
		response.sendRedirect("index.jsp");
	}
	con.close();
	%>
</body>
</html>