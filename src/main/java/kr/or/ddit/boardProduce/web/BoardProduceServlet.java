package kr.or.ddit.boardProduce.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.UserService;
import kr.or.ddit.user.service.UserServiceInf;

/**
 * Servlet implementation class BoardProduceServlet
 */
@WebServlet("/boardproduceList")
public class BoardProduceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardProduceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		System.out.println(request.getMethod());
		response.setContentType("text/html; charset=utf-8");
		
		//파라미터를 받아서 sysout으로 console 창에 출력
		String boardName1 = request.getParameter("boardName1");
		String boardName2 = request.getParameter("boardName2");
		String boardName3 = request.getParameter("boardName3");
		
		//담아줌
		System.out.println("boardName1 : " + boardName1);
		System.out.println("boardName2 : " + boardName2);
		System.out.println("boardName3 : " + boardName3);
		
		//화면에 게시판이름을 화면에 출력
//		HttpSession session = request.getSession();
//		session.setAttribute("boardName1");
		
		request.getRequestDispatcher("/boardproduce/boardproduceList.jsp").forward(request, response);
	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		System.out.println(request.getMethod());
		response.setContentType("text/html; charset=utf-8");
		
		// 파라미터를 받아서 sysout으로 console 창에 출력
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		System.out.println("userId : " + userId);
		System.out.println("password : " + password);
		
		// 로그인 프로세스
		// 가짜 (fake) service, dao객체를 생성
		UserServiceInf userService = new UserService();
		UserVo userVo = userService.getUser(userId);
		
		// 로그인 성공시 : forward /main.jsp : [main.jsp]
		// 로그인 실패시 : redirect login.jsp
		
		// 로그인 성공시 userVo 객체를 저장하여 (적당한 영역에)
		// main.jsp에서 사용자 아이디를 화면에 출력
		// 단, 새로운 탭에서 main.jsp를 직접 접속해도 사용자 아이디가 화면에 나와야 한다.
		if(userVo.validateUser(userId, password)){		
			HttpSession session = request.getSession();
			
//			session.setAttribute("userId", request.getParameter("userId"));
//			session.setAttribute("password", request.getParameter("password"));
			session.setAttribute("userVo", userVo);
			request.getRequestDispatcher("/jsp/main.jsp").forward(request, response);
		}else{
			//response.sendRedirect("/login/login.jsp");
			request.getRequestDispatcher("/login/login.jsp").forward(request, response);
		}
		
	}
		
}
