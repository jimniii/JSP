package controller.library.book;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.library.BookDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.library.BookService;


@WebServlet("/library/book/register.do")
public class RegisterController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	// 서비스 객체 가져오기
	private BookService service = BookService.INSTANCE;
	
	// 로거 생성
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/library/book/register.jsp");
		dispatcher.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String bookid = req.getParameter("bookid");
		String name = req.getParameter("name");
		String author = req.getParameter("author");
		String publisher = req.getParameter("publisher");
		String available = req.getParameter("available");
		String regdate = req.getParameter("regdate");
		
		BookDTO dto = new BookDTO();
		dto.setBookid(bookid);
		dto.setName(name);
		dto.setAuthor(author);
		dto.setPublisher(publisher);		
		dto.setAvailable(available);
		dto.setRegdate(regdate);
		
		logger.info(dto.toString());
		
		service.register(dto);
		
		resp.sendRedirect("/ch10/library/book/list.do");	
	}	
}











