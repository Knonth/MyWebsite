package base;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.bbsDAO;
import beans.Bbs_threadbean;

/**
 * Servlet implementation class Bbsguide_medium
 */
@WebServlet("/Bbsguide_medium")
public class Bbsguide_medium extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bbsguide_medium() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		bbsDAO bdao = new bbsDAO();

		List<Bbs_threadbean> threadlist = bdao.findAllforThread();
		request.setAttribute("threlist", threadlist);

//		ArrayList<Bbs_categorybean> bcbList = bdao.watchBbs_category();
//		request.setAttribute("bcblist", bcbList);

			RequestDispatcher dispatcher =
			request.getRequestDispatcher("/WEB-INF/jsp/bbsguide_medium.jsp");
			dispatcher.forward(request, response);


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
