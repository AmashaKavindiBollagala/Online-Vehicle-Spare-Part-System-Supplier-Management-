package A_VehicleSpareParts;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/O_DeleteServlet")
public class O_DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String OrderID= request.getParameter("OrderID");
		boolean isTrue;
		isTrue = OrderController.deletedata(OrderID);
		
		if(isTrue == true) {
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>('"+alertMessage+"');"+"window.location.href='OrderGetAllServlet';</script>");
		}
		else {
			List<OrderModel> orders_D = OrderController.getById(OrderID);
			request.setAttribute("orders_D", orders_D);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("O_wrong.jsp");
			dis2.forward(request,response);
		}
			
		}
	}


