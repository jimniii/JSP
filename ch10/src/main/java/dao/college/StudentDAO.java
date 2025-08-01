package dao.college;

import java.util.ArrayList;
import java.util.List;

import dto.college.StudentDTO;
import util.DBHelper;

public class StudentDAO extends DBHelper {
	
	private static final StudentDAO INSTANCE = new StudentDAO();
	public static StudentDAO getInstance() {
		return INSTANCE;
	}	
	private StudentDAO() {}
	
	private final String DBCP = "jdbc/college";
	
	public void insertStudent(StudentDTO dto) {		
		
		try {
			conn = getConnection(DBCP);
			
			String sql = "INSERT INTO STUDENT VALUES (?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getStdNo());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getBirth());
			psmt.setString(4, dto.getMajor());
			psmt.setString(5, dto.getEnr_date());			
			psmt.executeUpdate();
			closeAll();			
		}catch (Exception e) {			
			e.printStackTrace();			
		}		
	}
	
	public StudentDTO selectStudent(String stdNo) {
		
		StudentDTO dto = null;
		
		try {
			conn = getConnection(DBCP);
			
			String sql = "SELECT * FROM STUDENT WHERE STDNO=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, stdNo);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto = new StudentDTO();
				dto.setStdNo(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setBirth(rs.getString(3));
				dto.setMajor(rs.getString(4));
				dto.setEnr_date(rs.getString(5));				
			}			
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}		
		
		return dto;
	}
	
	public List<StudentDTO> selectAllStudent() {
		
		List<StudentDTO> dtoList = new ArrayList<StudentDTO>();
		
		try {
			conn = getConnection(DBCP);			
			stmt = conn.createStatement();
			
			String sql = "SELECT * FROM STUDENT";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				StudentDTO dto = new StudentDTO();
				dto.setStdNo(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setBirth(rs.getString(3));
				dto.setMajor(rs.getString(4));
				dto.setEnr_date(rs.getString(5));	
								
				dtoList.add(dto);
			}			
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return dtoList;
	}
	
	public void updateStudent(StudentDTO dto) {
		 try {
		        conn = getConnection(DBCP);
		        
		        String sql = "UPDATE STUDENT SET NAME = ?, BIRTH = ?, MAJOR = ?, ENR_DATE = ? WHERE STDNO = ?";
		        psmt = conn.prepareStatement(sql);
		        psmt.setString(1, dto.getName());
		        psmt.setString(2, dto.getBirth());
		        psmt.setString(3, dto.getMajor());
		        psmt.setString(4, dto.getEnr_date());
		        psmt.setString(5, dto.getStdNo());

		        psmt.executeUpdate();
		        closeAll();
		        
		    } catch (Exception e) {
		        e.printStackTrace();
		    }		
	}
	
	public void deleteStudent(String stdno) {
		try {
	        conn = getConnection(DBCP);
	        
	        String sql = "DELETE FROM STUDENT WHERE STDNO = ?";
	        psmt = conn.prepareStatement(sql);
	        psmt.setString(1, stdno);

	        psmt.executeUpdate();
	        closeAll();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }	
	}
}