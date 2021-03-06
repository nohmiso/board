package kr.or.ddit.boardUpdate;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardDeleteServlet
 */
@WebServlet("/boardupdateList")
public class BoardupdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardupdateServlet() {
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
		
		request.getRequestDispatcher("/boardupdate/boardupdateList.jsp").forward(request, response);
	 
	/*  게시판 이름 /네모칸 /체크박스 /버튼
	      게시판 이름 /네모칸 /체크박스 /버튼
		게시판 이름 /네모칸 /체크박스 /버튼
				(자유게시판   (사용/  
	  			/Q&A게시판) 미사용) 
	 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
