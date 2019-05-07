package base;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.userDAO;
import beans.Userbean;

/**
 * Servlet implementation class Userdelete
 */
@WebServlet("/Userdelete")
public class Userdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userdelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		userDAO dao = new userDAO();
		String id = request.getParameter("id");
		dao.UserDelete(id);

		HttpSession session = request.getSession();
		Userbean u = (Userbean)session.getAttribute("ub");

		if ( u.getUser_id() != (10)) {

			session.removeAttribute("ub");
			response.sendRedirect("Userdelete_ok");
		} else {
			response.sendRedirect("Ownermenu_user");
		}
	}



}
