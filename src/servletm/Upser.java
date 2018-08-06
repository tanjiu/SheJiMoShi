package servletm;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ModelImpl;
import table.Model;

/**
 * Servlet implementation class Upser
 */
@WebServlet("/servletm/Upser")
public class Upser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Model m= new Model();
		int id=Integer.parseInt(request.getParameter("id"));
		m.setId(id);
		m.setName(request.getParameter("name"));
		m.setDefine(request.getParameter("define"));
		m.setNature(request.getParameter("nature"));
		m.setWhen(request.getParameter("when"));
		m.setSolve(request.getParameter("solve"));
		m.setExam(request.getParameter("exam"));
		m.setGood(request.getParameter("good"));
		m.setBad(request.getParameter("bad"));
		m.setPosition(request.getParameter("position"));
		ModelImpl a=new ModelImpl();
		if(a.update(m)>0){
			
			request.getRequestDispatcher("/success.jsp").forward(request, response);
		}
		else
			{
			
			request.getRequestDispatcher("/fail.jsp").forward(request, response);
			};
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
