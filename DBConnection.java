package com.niit.loginapp.dbconnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBConnection {
	private static String username="sa";
	private static String password="";
	private static String url="jdbc:h2:~/test";
	private static String driver="org.h2.Driver";
	private static Connection connection = null;
	private DBConnection(){
		
	}
	public static Connection getDBConnection(){
		try {
			Class.forName(driver);	//load the driver
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			connection = DriverManager.getConnection(url,username,password); //make connection
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	public static void main(String[] args){
		if(getDBConnection()==null){
			System.out.println("Could not establish the connection");

		}
		else{
			System.out.println("Connection Successfully established");
		}
	}

}
