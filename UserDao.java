package com.niit.shopgirl.dao.temp;

public class UserDao {

	public boolean isValidCredentials(String id,String password){
		if(id.equals("niit") && password.equals("niit@123")){
			return true;
		}
		else{
			return false;
		}
	}
	
	
}
