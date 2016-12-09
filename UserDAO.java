package com.niit.loginapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.niit.loginapp.dbconnection.DBConnection;


public class UserDAO {
	private Connection con;
	private PreparedStatement pStatement;
	private ResultSet resultSet;
	
	public boolean isValidUser(String userID,String password){
		con = DBConnection.getDBConnection();
		String query = "Select * from tuser where id=? and password=?";
				
					
						try {
							pStatement = con.prepareStatement(query);
							pStatement.setString(1, userID);
							pStatement.setString(2, password);
							resultSet = pStatement.executeQuery();
							if (resultSet.next())
							{
								return true;
							}
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						finally{
							try {
								con.close();
								pStatement.close();
								resultSet.close();
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
					
		return false;
	}
}

	//	public User getUser(String id){
		
	//	con = DBConnection.getDBConnection();
		
	//	String query = "Select * from tuser where id=?";
		
	//	User user = null;
		
	//	pStatement = con.prepareStatement(query);
	//	pStatement.setString(1, id);
	//	resultSet = pStatement.executeQuery();
	//	if (resultSet.next()){
	//		 user = new User();
	//		 user.setId(resultSet.getString(1));
	//		 user.setPassword(resultSet.getString(2));
	//	 }
	//	finally
	//	{
	//		con.close();
	//		pStatement.close();
	//		resultSet.close();
	//	}
	//	return user;
//	}
//	public List<User> getAllUsers(){
//		return null;
//	}
 // }
