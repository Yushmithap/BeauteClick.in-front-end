package com.niit.loginapp.dao;

public class UserDAO {
	public boolean isValidUser(String userID,String password){
		if(userID.equals("niit") && password.equals("niit")){
			return true;
		}
		else{
			return false;
		}
	}
}
