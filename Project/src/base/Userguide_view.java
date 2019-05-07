package base;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.userDAO;
import beans.Userbean;

/**
 * Servlet implementation class Userguide_up
 */
@WebServlet("/Userguide_view")
public class Userguide_view extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userguide_view() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		userDAO dao = new userDAO();
		String id = request.getParameter("id");
		System.out.println(id);
		Userbean dataub = dao.findByUser(id);
		request.setAttribute("vub", dataub);


		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/WEB-INF/jsp/userguide_view.jsp");
				 dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

//		userDAO dao = new userDAO();
//		String id = request.getParameter("uid");
//		System.out.println(id);
//		Userbean dataub = dao.findByUser(id);
//		request.setAttribute("sub", dataub);
	}

}
