package bean;

import java.sql.SQLException;

import jdbc.Util;
import table.Model;


public class ModelImpl extends Util implements ModelBase {
	private static Model m = null;

	@Override
	public int add(Model m) {
		int i=0;
		
			String sql = "insert into main(main.id,main.name,main.define,main.nature,main.when,main.solve,main.exam,main.good,main.bad,main.position) values(?,?,?,?,?,?,?,?,?,?)";
			Object[] params = {m.getId(),m.getName(),m.getDefine(),m.getNature(),m.getWhen(),m.getSolve(),m.getExam(),m.getGood(),m.getBad(),m.getPosition()};
			i = this.executeUpdate(sql,params);
			// 4 处理执行结果
			

		
		return i;
	}

	@Override
	public int update(Model m) {
		int i=0;
		
			String sql = "update main set main.name=?,main.define=?,main.nature=?,main.when=?,main.solve=?,main.exam=?,main.good=?,main.bad=?,main.position=? where main.name=?";
			Object[] params = {m.getName(),m.getDefine(),m.getNature(),m.getWhen(),m.getSolve(),m.getExam(),m.getGood(),m.getBad(),m.getPosition(),m.getName()};
			i = this.executeUpdate(sql,params);
			
		
		return i;
	}

	@Override
	public void delete(String name) {
		try {
			String sql = "delete from main where name=?";
			Object[] params ={name};
			int i = this.executeUpdate(sql,params);
			if (i > 0) {
				System.out.println("删除成功！");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Model getByid(int id) {
		String sql="select * from main where id=?";
		Object []params={id};
		rs=this.executeSQL(sql, params);
		
			try {
				while(rs.next()){
					String name=rs.getString("name");
					String define=rs.getString("define");
					String nature=rs.getString("nature");
					String when=rs.getString("when");
					String solve=rs.getString("solve");
					String exam=rs.getString("exam");
					String good=rs.getString("good");
					String bad=rs.getString("bad");
					String position=rs.getString("position");
					m=new Model(name,define,nature,when,solve,exam,good,bad,position);
					
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return m;
		
	}



}
