package service.library;

import java.util.List;

import dao.library.BookDAO;
import dto.library.BookDTO;





// 열거형으로 싱글톤 객체 생성
public enum BookService {

	INSTANCE;
	
	
	private BookDAO dao = BookDAO.getInstance();
	
	
	public void register(BookDTO dto) {
		dao.insertBook(dto);
		
	}
	public BookDTO findById(String bookid) {
		return dao.selectBook(bookid);
	}
	public List<BookDTO> findAll() {
		return dao.selectAllBook();
	}
	public void modify(BookDTO dto) {
		dao.updateBook(dto);
		
	}
	public void delete(String stdNo) {
		dao.deleteBook(stdNo);
		
	}
	
	
	
	
	
	
}
