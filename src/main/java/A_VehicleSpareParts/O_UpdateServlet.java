package A_VehicleSpareParts;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/O_UpdateServlet")
public class O_UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public O_UpdateServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String OrderID= request.getParameter("OrderID");
		String Date= request.getParameter("Date");
		String Details= request.getParameter("Details");
		double Cost = 0.0;
	    try {
	        Cost = Double.parseDouble(request.getParameter("Cost"));
	    } catch (NumberFormatException e) {
	        
	        e.printStackTrace();
	   
	    }
		String Status= request.getParameter("Status");
		
		boolean isTrue;
		isTrue = OrderController.updatedata(OrderID, Date, Details, Cost, Status);

		
		if(isTrue ==true) {
			List<OrderModel> orders_A = OrderController.getById(OrderID);
			request.setAttribute("orders_A", orders_A);
			
			String alertMessage= "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='OrderGetAllServlet'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("O_wrong.jsp");
			dis2.forward(request,response);
		}
	}

}
