package bean;

import java.sql.ResultSet;

import jdbc.Util;
import table.User;

public class Userb extends Util{
//×¢²á
	public int add(User user){
		int i=0;
		
			String sql = "insert into user(username,password) values(?,?)";
			Object[] params = {user.getUsername(),user.getPassword()};
			i = this.executeUpdate(sql,params);

		
		return i;
	}
//µÇÂ¼
	public ResultSet login (User user){
		
		String sql="select password from user where username=?";
		Object []params={user.getUsername()};
		rs=this.executeSQL(sql, params);
		return rs;
		
	}
}
