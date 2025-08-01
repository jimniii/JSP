package controller.library.book;

import java.io.IOException;

import dto.library.BookDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.library.BookService;


@WebServlet("/library/book/modify.do")
public class ModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private BookService service = BookService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 전송 데이터 수신
		String bookid = req.getParameter("bookid");
		
		// 수정 데이터 조회
		BookDTO bookDTO = service.findById(bookid);
		
		// request 객체로 조회 데이터 공유
		req.setAttribute("bookDTO", bookDTO);
		
		// 포워드
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/library/book/modify.jsp");
		dispatcher.forward(req, resp);		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// 전송 데이터 수신
		String bookid = req.getParameter("bookid");
		String name = req.getParameter("name");
		String author = req.getParameter("author");
		String publisher = req.getParameter("publisher");
		String available = req.getParameter("available");
		String regdate = req.getParameter("regdate");
		// 서비스 전달을 위한 DTO 생성
		BookDTO dto = new BookDTO();

		dto.setBookid(bookid);
		dto.setName(name);
		dto.setAuthor(author);
		dto.setPublisher(publisher);		
		dto.setAvailable(available);
		dto.setRegdate(regdate);
		
		
		// 서비스 호출
		service.modify(dto);
		
		// 이동
		resp.sendRedirect("/ch10/library/book/list.do");
		
	}
	
	
}
