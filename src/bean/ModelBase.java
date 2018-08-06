package bean;

import table.Model;

public interface ModelBase {

	// 增加模式
	public int add(Model m) ;
	// 修改模式
	public int update(Model m);
	// 删除模式
	public void delete(String name);
	// 查找特定标题的模式
	public Model getByid(int id);
}
