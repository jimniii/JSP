package controller.college.student;

import java.io.IOException;

import dto.college.StudentDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.college.StudentService;



@WebServlet("/college/student/modify.do")
public class ModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private StudentService service = StudentService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 전송 데이터 수신
		String stdno = req.getParameter("stdno");
		
		StudentDTO studentDTO = service.findById(stdno);
		req.setAttribute("student", studentDTO);

		// 포워드
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/college/student/modify.jsp");
		dispatcher.forward(req, resp);		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// 전송 데이터 수신
		String stdNo = req.getParameter("stdno");
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		String major = req.getParameter("major");
		String enr_date = req.getParameter("enr_date");

		// 서비스 전달을 위한 DTO 생성
		StudentDTO dto = new StudentDTO();

		
		
		dto.setStdNo(stdNo);
		dto.setName(name);
		dto.setBirth(birth);
		dto.setMajor(major);		
		dto.setEnr_date(enr_date);
		
		
		// 서비스 호출
		service.modify(dto);
		
		// 이동
		resp.sendRedirect("/ch10/college/student/list.do");
		
	}
	
	
}
