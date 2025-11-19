package A_VehicleSpareParts;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OrderGetAllServlet")
public class OrderGetAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<OrderModel> allOrders = OrderController.getAllorder();
		request.setAttribute("allOrders", allOrders);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("OrderDetails.jsp");
		dispatcher.forward(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
