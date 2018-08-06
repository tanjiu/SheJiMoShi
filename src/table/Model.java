package table;

public class Model {
	private int id;
	private String name;
	private String define;
	private String nature;
	private String when;
	private String solve;
	private String exam;private String good;
	private String bad;
	private String position;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDefine() {
		return define;
	}
	public void setDefine(String define) {
		this.define = define;
	}
	public String getNature() {
		return nature;
	}
	public void setNature(String nature) {
		this.nature = nature;
	}
	public String getWhen() {
		return when;
	}
	public void setWhen(String when) {
		this.when = when;
	}
	public String getSolve() {
		return solve;
	}
	public void setSolve(String solve) {
		this.solve = solve;
	}
	public String getExam() {
		return exam;
	}
	public void setExam(String exam) {
		this.exam = exam;
	}
	public String getGood() {
		return good;
	}
	public void setGood(String good) {
		this.good = good;
	}
	public String getBad() {
		return bad;
	}
	public void setBad(String bad) {
		this.bad = bad;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Model( String name, String define, String nature, String when, String solve, String exam, String good,
			String bad, String position) {
		super();
		
		this.name = name;
		this.define = define;
		this.nature = nature;
		this.when = when;
		this.solve = solve;
		this.exam = exam;
		this.good = good;
		this.bad = bad;
		this.position = position;
	}
	public Model() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
