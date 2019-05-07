package base;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.userDAO;

/**
 * Servlet implementation class Usercreate
 */
@WebServlet("/Usercreate")
public class Usercreate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Usercreate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/WEB-INF/jsp/usercreate.jsp");
				 dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		String logid = request.getParameter("clogid");
		String name = request.getParameter("cusername");
		String birthdate = request.getParameter("cbirthdate");
		String pass = request.getParameter("cpassword");
		String conpass = request.getParameter("conpass");
		String usertweet = request.getParameter("ctweet");
		String profile_picture = request.getParameter("cprogpic");

			if ( !pass.equals(conpass)) {
				request.setAttribute("passerr", "パスワード一致しない！");
				RequestDispatcher dispatcher =
						request.getRequestDispatcher("/WEB-INF/jsp/usercreate.jsp");
						dispatcher.forward(request, response);

				} else if  ( logid.equals("") || name.equals("")  || birthdate.equals("")  || pass.equals("") || conpass.equals("") ) {

					request.setAttribute("errMsg", "【任意】以外の空白は許しまへんで～");
					RequestDispatcher dispatcher =
							request.getRequestDispatcher("/WEB-INF/jsp/usercreate.jsp");
							dispatcher.forward(request, response);

			} else  {
				userDAO dao = new userDAO();
				dao.Usercreate(logid, name, birthdate, profile_picture, pass, usertweet);
				response.sendRedirect("Index");
			}
		}
}
