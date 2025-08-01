package dao.library;

import java.util.ArrayList;
import java.util.List;

import dto.library.BookDTO;
import util.DBHelper;

public class BookDAO extends DBHelper {
	
	private static final BookDAO INSTANCE = new BookDAO();
	public static BookDAO getInstance() {
		return INSTANCE;
	}	
	private BookDAO() {}
	
	private final String DBCP = "jdbc/library";
	
	public void insertBook(BookDTO dto) {		
		
		try {
			conn = getConnection(DBCP);
			
			String sql = "INSERT INTO BOOK VALUES (?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getBookid());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getAuthor());
			psmt.setString(4, dto.getPublisher());
			psmt.setString(5, dto.getAvailable());
			psmt.setString(6, dto.getRegdate());
			
			psmt.executeUpdate();
			closeAll();			
		}catch (Exception e) {			
			e.printStackTrace();			
		}		
	}
	
	public BookDTO selectBook(String bookid) {
		
		BookDTO dto = null;
		
		try {
			conn = getConnection(DBCP);
			
			String sql = "SELECT * FROM BOOK WHERE BOOK_ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, bookid);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto = new BookDTO();
				dto.setBookid(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setAuthor(rs.getString(3));
				dto.setPublisher(rs.getString(4));
				dto.setAvailable(rs.getString(5));				
				dto.setRegdate(rs.getString(6));				
			}			
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}		
		
		return dto;
	}
	
	public List<BookDTO> selectAllBook() {
		
		List<BookDTO> dtoList = new ArrayList<BookDTO>();
		
		try {
			conn = getConnection(DBCP);			
			stmt = conn.createStatement();
			
			String sql = "SELECT * FROM Book";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				BookDTO dto = new BookDTO();
				dto.setBookid(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setAuthor(rs.getString(3));
				dto.setPublisher(rs.getString(4));
				dto.setAvailable(rs.getString(5));				
				dto.setRegdate(rs.getString(6));	
								
				dtoList.add(dto);
			}			
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return dtoList;
	}
	
	public void updateBook(BookDTO dto) {
		try {
	        conn = getConnection(DBCP);

	        String sql = "UPDATE BOOK SET title = ?, author = ?, publisher = ?, available = ?, reg_date = ? WHERE book_id = ?";
	        psmt = conn.prepareStatement(sql);
	        psmt.setString(1, dto.getName());
	        psmt.setString(2, dto.getAuthor());
	        psmt.setString(3, dto.getPublisher());
	        psmt.setString(4, dto.getAvailable());
	        psmt.setString(5, dto.getRegdate());
	        psmt.setString(6, dto.getBookid());

	        int result = psmt.executeUpdate();
	      
	        closeAll();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }	
	}
	
	public void deleteBook(String bookid) {
		try {
	        conn = getConnection(DBCP);

	        String sql = "DELETE FROM BOOK WHERE BOOK_ID = ?";
	        psmt = conn.prepareStatement(sql);
	        psmt.setString(1, bookid);
	        
	        int result = psmt.executeUpdate();
	        
	        
	        closeAll();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }		
	}
}