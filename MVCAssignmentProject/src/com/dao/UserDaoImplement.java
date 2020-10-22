package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connection.MyConnection;
import com.dto.User;

public class UserDaoImplement implements UserDao{
	
	private MyConnection myConn;
	
	public UserDaoImplement() {
		myConn = new MyConnection();
	}
	
	@Override
	public int insertUser(User user) {
		int i = 0;
		try {
			Connection conn = myConn.getConn();
			PreparedStatement st = conn.prepareStatement("insert into UserData(FullName, UserName, UPassword) values(?, ?, ?)");
			st.setString(1, user.getFullName());
			st.setString(2, user.getUserName());
			st.setString(3, user.getPass());
			
			i = st.executeUpdate();
			st.close();
		} catch (Exception e) {
			
		}
			
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//		}
		return i;
	}

	@Override
	public boolean login(User user) {
		boolean flag = false;
		try {
			Connection conn = myConn.getConn();
			PreparedStatement pst = conn.prepareStatement("select * from UserData where UserName = ? and UPassword = ?");
			pst.setString(1, user.getUserName());
			pst.setString(2, user.getPass());
			
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				user.setUserId(rs.getInt("userId"));			
				flag = true;
			}
			
			pst.close();
			
		} catch (Exception e) {
			
		}
		return flag;
			
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//		}
		
	}
	
}
