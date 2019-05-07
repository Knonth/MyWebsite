package base;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.userDAO;
import beans.Userbean;

/**
 * Servlet implementation class Ownermenu_user
 */
@WebServlet("/Ownermenu_user")
public class Ownermenu_user extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ownermenu_user() {
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
		List<Userbean> ublist =  dao.findAll();
		request.setAttribute("userlist", ublist);

//		request.setCharacterEncoding("UTF-8");
//		String msg = "警告";
//		request.setAttribute("Warning",  msg);

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/WEB-INF/jsp/ownermenu_user.jsp");
				 dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		userDAO fdao = new userDAO();
		String userid = request.getParameter("id");
		List<Userbean> ublist = null;

		if (userid == null) {
			ublist = fdao.findAll();
		} else {
				ublist = fdao.searchUser(userid);
		}
		request.setAttribute("searchid", ublist);

		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/WEB-INF/jsp/ownermenu_user.jsp");
				dispatcher.forward(request, response);
		}

}
