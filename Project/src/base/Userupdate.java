package base;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.userDAO;
import beans.Userbean;

/**
 * Servlet implementation class Userupdate
 */
@WebServlet("/Userupdate")
public class Userupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userupdate() {
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
		request.setAttribute("dub", dataub);

		RequestDispatcher dispatcher =
		request.getRequestDispatcher("/WEB-INF/jsp/userupdate.jsp");
		 dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		userDAO dao = new userDAO();
//		String rid = request.getParameter("id");
//		System.out.println(rid);
//		Userbean roadub = dao.findByUser(rid);
//		request.setAttribute("dub", roadub);

		String id = request.getParameter("upd_id");
		String logid = request.getParameter("upd_logid");
		String name = request.getParameter("upd_name");
		String birthdate = request.getParameter("upd_birth");
		String pass = request.getParameter("upd_pass");
		String conpass = request.getParameter("upd_conpass");
		String usertweet = request.getParameter("upd_tweet");
		String profile_picture = request.getParameter("upd_photo");

			if ( !pass.equals(conpass)) {
				request.setAttribute("passerr", "パスワード一致しない！");


				Userbean dataub = dao.findByUser(id);
				request.setAttribute("dub", dataub);

				RequestDispatcher dispatcher =
						request.getRequestDispatcher("/WEB-INF/jsp/userupdate.jsp");
						dispatcher.forward(request, response);

				} else if  ( logid.equals("") || name.equals("")  || birthdate.equals("")  || pass.equals("") || conpass.equals("") ) {

					Userbean dataub = dao.findByUser(id);
					request.setAttribute("dub", dataub);

					request.setAttribute("errMsg", "【任意】以外の空白は許しまへんで～");
					RequestDispatcher dispatcher =
							request.getRequestDispatcher("/WEB-INF/jsp/userupdate.jsp");
							dispatcher.forward(request, response);

			} else  {
				dao.Userupdate(id, logid, name, birthdate, profile_picture, pass, usertweet);
				//セッションに更新した情報を詰めるためHttpSessionを呼ぶ↓
				HttpSession session =  request.getSession();
				//セッションから取り出す
				Userbean ub = (Userbean)session.getAttribute("ub");

					if (ub.getUser_id() != 1 ) {

						int iid = ub.getUser_id();
						//daoのfindByUser()の返り値はStringなのでintからstringに変換
						Integer lid = new Integer(iid);
						String sid = lid.toString();
						//きちんと取れてるか
						System.out.println(iid);
						//取り出したセッションをStringに変換しそれをdao.findByUserにセット
						Userbean dataub = dao.findByUser(sid);
						request.setAttribute("dub", dataub);
					RequestDispatcher dispatcher =
							request.getRequestDispatcher("/WEB-INF/jsp/userguide_up.jsp");
							dispatcher.forward(request, response);

						} else {
							int iid = ub.getUser_id();
							//daoのfindByUser()の返り値はStringなのでintからstringに変換
							Integer lid = new Integer(iid);
							String sid = lid.toString();
							//きちんと取れてるか
							System.out.println(iid);
							//取り出したセッションをStringに変換しそれをdao.findByUserにセット
							Userbean dataub = dao.findByUser(sid);
							request.setAttribute("dub", dataub);
							response.sendRedirect("Ownermenu_user");

				}
			}
	}

}
