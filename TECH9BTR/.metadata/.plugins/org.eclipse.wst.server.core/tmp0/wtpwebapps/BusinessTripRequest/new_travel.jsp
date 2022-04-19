<%@ page language="java" import="java.sql.ResultSet" import="java.sql.Statement" import="java.sql.Connection" import="java.sql.DriverManager" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
		<%  String deptdate = request.getParameter("ddate");
			String returndate = request.getParameter("rdate");
			String deptcountry = request.getParameter("dcountry");
			String destcity = request.getParameter("dcity");
			String destaddr = request.getParameter("d_addr");
			String destcountry = request.getParameter("mno");
			String destpc = request.getParameter("dob");
			String currency = request.getParameter("gender");
			String estcost = request.getParameter("ecost");
			String advamt = request.getParameter("advance");
			String accomod = request.getParameter("city");
			String subdate = request.getParameter("cont");
	
			try
			{
				Connection connection = null;
			    Class.forName("oracle.jdbc.driver.OracleDriver");
			    connection = DriverManager.getConnection("jdbc:oracle:thin:@132.145.42.131:1521/Testdb_pdb1.evopaassub1.evopaasvcn.oraclevcn.com","trainee_schema","Trn__Schema_21");
				Statement statement = connection.createStatement();
				String command = "INSERT into BATCH9BTR_TRIP_DETAILS()values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"')";
			    statement.executeUpdate(command);
				out.println("Data is successfully inserted!");
			}
			catch(Exception e)
			{
			System.out.print(e);
			e.printStackTrace();
			}
		%>
</body>
</html>