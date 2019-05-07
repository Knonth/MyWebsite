package base;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.bbsDAO;
import beans.Userbean;

/**
 * Servlet implementation class Newbbs
 */
@WebServlet("/Newbbs")
public class Newbbs extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Newbbs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher =
		request.getRequestDispatcher("/WEB-INF/jsp/newbbs.jsp");
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Userbean u = (Userbean)session.getAttribute("ub");

		int id = u.getUser_id();
		String profilephoto = u.getProfile_photo();
		String category = request.getParameter("category");
		String title = request.getParameter("bbstitle");
		String photo = request.getParameter("threadphoto");
		String maintext = request.getParameter("maintext");
		String user_name = u.getName();

		if  ( category.equals("") || title.equals("")  || maintext.equals("")  ) {

				request.setAttribute("errMsg", "【任意】以外の空白は許しまへんで～");
				RequestDispatcher dispatcher =
						request.getRequestDispatcher("/WEB-INF/jsp/newbbs.jsp");
						dispatcher.forward(request, response);

		} else  {
			bbsDAO dao = new bbsDAO();
			dao.Bbscreate(title, maintext, category, photo, id, profilephoto, user_name);
//			response.sendRedirect("Newbbsconfim");
			response.sendRedirect("Bbsguide_medium");
		}
	}

}
