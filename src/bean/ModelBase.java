package bean;

import table.Model;

public interface ModelBase {

	// ����ģʽ
	public int add(Model m) ;
	// �޸�ģʽ
	public int update(Model m);
	// ɾ��ģʽ
	public void delete(String name);
	// �����ض������ģʽ
	public Model getByid(int id);
}
