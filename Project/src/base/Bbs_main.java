package base;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.bbsDAO;
import DAO.postDAO;
import beans.Bbs_postbean;
import beans.Bbs_threadbean;
import beans.Userbean;

/**
 * Servlet implementation class Bbs_main
 */
@WebServlet("/Bbs_main")
public class Bbs_main extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bbs_main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		bbsDAO bdao = new bbsDAO();
		postDAO pdao = new postDAO();
//		Bbs_postbean posb = new Bbs_postbean();

		String id = request.getParameter("id");
		System.out.println(id);
		Bbs_threadbean dataub = bdao.findByBbs(id);
		request.setAttribute("tub", dataub);

		Bbs_postbean expost = pdao.Bbs_postExtract(id);
		List<Bbs_postbean> postlist = pdao.findAllforPost();
		request.setAttribute("postlist", postlist);
		request.setAttribute("pub", expost);


		RequestDispatcher dispatcher =
		request.getRequestDispatcher("/WEB-INF/jsp/bbs_main.jsp");
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

		String posttext = request.getParameter("posttext");
		String postfile = request.getParameter("postfile");
		int userid = u.getUser_id();
		String username = u.getName();
		String profilephoto = u.getProfile_photo();
		String pthread_id = request.getParameter("threadid");

		if  ( u == null || posttext.equals("") ) {

					request.setAttribute("errMsg", "すっごーい！カキコミできないよ！");
					RequestDispatcher dispatcher =
							request.getRequestDispatcher("/WEB-INF/jsp/bbs_main.jsp");
							dispatcher.forward(request, response);

			} else  {
				postDAO dao = new postDAO();
				dao.BbsPost(posttext, postfile, userid, profilephoto, pthread_id, username );
				response.sendRedirect("Bbs_main?id="+ pthread_id);
			}
		}

}
