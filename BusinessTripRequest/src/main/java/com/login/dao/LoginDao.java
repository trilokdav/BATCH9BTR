package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Driver;

import com.login.bean.LoginBean;
import com.login.util.DBConnection;

public class LoginDao 
{
	
	@SuppressWarnings({ "rawtypes", "deprecation" })
	public String authenticateUser(LoginBean loginBean)
	{
		 String email_id = loginBean.getEmail_id();
		    String password = loginBean.getPassword();
		 

		    String emailIDDB = "";
		    String passwordDB = "";
		    String roleDB = "";
		 
		    //Connection con = null;
		    //Statement statement = null;
		    ResultSet resultSet;
	    try
	    {
	    	Class driver = Class.forName("oracle.jdbc.driver.OracleDriver");
			DriverManager.registerDriver((Driver) driver.newInstance());
			final Connection connection = DBConnection.openConnection();
			//statement = connection.createStatement();
			final Statement statement = connection.createStatement();
//	        con = DBConnection.createConnection();
		//	selectemp(statement);
	        resultSet = statement.executeQuery("select email_id,password,role from BATCH9BTR_USER_DETAILS d inner join BATCH9BTR_USER_TYPE_MST m ON d.user_type_id =m.user_type_id;");
//	        while(resultSet.next())
//	        {
	            emailIDDB = resultSet.getString("email_id");
	            passwordDB = resultSet.getString("password");
	            roleDB = resultSet.getString("role");
	            System.out.println(emailIDDB);
	            System.out.println(passwordDB);
	            System.out.println(roleDB);
	 
	            if(email_id.equals(emailIDDB) && password.equals(passwordDB) && roleDB.equals("Employee"))
	            return "Employee_role";
	            else if(email_id.equals(emailIDDB) && password.equals(passwordDB) && roleDB.equals("L1"))
	            return "L1_role";
	            else if(email_id.equals(emailIDDB) && password.equals(passwordDB) && roleDB.equals("L2"))
	            return "L2_Role";
	            else if(email_id.equals(emailIDDB) && password.equals(passwordDB) && roleDB.equals("L3"))
		        return "L3_Role";
	       // }
	        statement.close();
			DBConnection.closeConnection();
	    }
	    catch (SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return "Invalid user credentials";
	}
}
