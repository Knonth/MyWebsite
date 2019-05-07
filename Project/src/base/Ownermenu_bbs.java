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
 * Servlet implementation class Ownermenu_bbs
 */
@WebServlet("/Ownermenu_bbs")
public class Ownermenu_bbs extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ownermenu_bbs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		bbsDAO Bdao = new bbsDAO();
		List<Bbs_threadbean> threadList =  Bdao.findAllforThread();
		request.setAttribute("threadlist", threadList);


		RequestDispatcher dispatcher =
		request.getRequestDispatcher("/WEB-INF/jsp/ownermenu_bbs.jsp");
		 dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
