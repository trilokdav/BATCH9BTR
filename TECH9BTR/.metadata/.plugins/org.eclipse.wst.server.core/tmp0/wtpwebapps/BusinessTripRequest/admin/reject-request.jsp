<%@ page language="java" import="java.sql.ResultSet"
	import="java.sql.Statement" import="java.sql.Connection"
	import="java.sql.DriverManager" import="java.text.SimpleDateFormat"
	import="java.util.Date" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>



	<%      
       
			try
			{
				Connection connection = null;
			    Class.forName("oracle.jdbc.driver.OracleDriver");
			    connection = DriverManager.getConnection("jdbc:oracle:thin:@132.145.42.131:1521/Testdb_pdb1.evopaassub1.evopaasvcn.oraclevcn.com","trainee_schema","Trn__Schema_21");
				Statement statement = connection.createStatement();
				String sid=(String)session.getAttribute("uid");
				String tid = request.getParameter("tid");
				String query = "";
				

				if(sid.equals("2")){
					 query = "update batch9btr_approval_l1 set approval_status = 'rejected' where trip_id = '"+tid+"'";
				}
				else if( sid.equals("3")){
					 query = "update batch9btr_approval_l2 set approval_status = 'rejected' where trip_id = '"+tid+"'";
				}
				else if ( sid.equals("4")){
					 query = "update batch9btr_approval_l3 set approval_status = 'rejected' where trip_id = '"+tid+"'";
				}
				else{
					 query = "";
				}
				
				
			    statement.executeUpdate(query);
			    
			    
			    out.println("<script type=\"text/javascript\">");
	            out.println("alert('Trip Request Rejected!');");
	            out.println("window.location.href = \"admin-pending-request.jsp\";");
	            out.println("</script>");
				
			    
			}
			catch(Exception e)
			{
			System.out.print(e);
			e.printStackTrace();
			}
		%>



</body>
</html>


