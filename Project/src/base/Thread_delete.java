package base;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.bbsDAO;
import beans.Userbean;

/**
 * Servlet implementation class Thread_delete
 */
@WebServlet("/Thread_delete")
public class Thread_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Thread_delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		bbsDAO bdao = new bbsDAO();
		String id = request.getParameter("tdid");
		System.out.println(id);
		bdao.ThreadDelete(id);

		HttpSession session = request.getSession();
		Userbean u = (Userbean)session.getAttribute("ub");
		if (u.getUser_id() == (10) ) {
			response.sendRedirect("Ownermenu_bbs");
		} else {
			response.sendRedirect("Bbsguide_medium");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
