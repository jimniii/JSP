package controller.shop.customer;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import dto.shop.CustomerDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.shop.CustomerService;

@WebServlet("/shop/customer/list.do")
public class ListController extends HttpServlet{

	
	
	private static final long serialVersionUID = 1L;
	
	private CustomerService service = CustomerService.INSTANCE;
	
	// 로거 생성
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		/*
		 * 개발환경에서는 System 출력으로 개발 과정을 테스트할 수 있지만 
		 * 배포환경에서는 System 출력이 자원낭비
		 */
		
		logger.debug("debug...1");
		logger.info("info....1");
		logger.warn("warn....1");
		logger.error("error....1");
		
		List<CustomerDTO> dtoList = service.findAll();
		
		logger.debug("debug...2"+dtoList);
		logger.info("info....2"+dtoList);
		logger.warn("warn....2"+dtoList);
		logger.error("error...2"+dtoList);
		
		
		req.setAttribute("dtoList", dtoList);
		
		
		

		
		
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/shop/customer/list.jsp");
		dispatcher.forward(req, resp);
		
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
	
	
}
