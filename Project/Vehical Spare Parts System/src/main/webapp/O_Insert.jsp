

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="CSS/A_Sdash.css">
    <link rel="stylesheet" href="CSS/Order.css">
<title>Insert details here</title>
</head>
<body>
<div class="container">
        <section id="sidebar">
            <a href="#" class="brand"><i class='bx bxs-smile icon'></i>Supplier Dashboard</a>
            <ul class="side-menu">
                <li><a href="#" class="active"><i class='bx bxs-dashboard icon' ></i> Dashboard</a></li>
                <li class="divider" data-text="main">Main</li>
                <li>
                    <a href="#"><i class='bx bxs-inbox icon' ></i> Elements <i class='bx bx-chevron-right icon-right' ></i></a>
                    <ul class="side-dropdown">
                        <li><a href="#">Alert</a></li>
                        <li><a href="#">Product Management</a></li>
                        <li><a href="#">Payments</a></li>
                    </ul>
                </li>
                
                <li><a href="O_Insert.jsp" onclick="navigateToOrders(event)"><i class='bx bxs-chart icon' ></i> Orders</a></li>
                <li><a href="#"> <i class='bx bxs-chart icon' ></i> Reports & Analytics</a></li>
			<li><a href="#"><i class='bx bxs-widget icon' ></i> Account & Security</a></li>
			<li class="divider" data-text="table and forms">Table and forms</li>
			<li><a href="#"><i class='bx bx-table icon' ></i> Tables</a></li>
			<li>
				<a href="#"><i class='bx bxs-notepad icon' ></i> Forms <i class='bx bx-chevron-right icon-right' ></i></a>
				<ul class="side-dropdown">
					<li><a href="#">Request forms</a></li>
					<li><a href="#">Rejections</a></li>
					
				</ul>
			</li>
		</ul>
        <div class="ads">
			<div class="wrapper">
				<a href="#" class="btn-upgrade">Upgrade</a>
				<p>Become a <span>PRO</span> member and enjoy <span>All Features</span></p>
			</div>
		</div>
	</section>
    <section id="headerbar">
        <nav>
			<i class='bx bx-menu toggle-sidebar' ></i>
			
			<a href="#" class="nav-link">
				<i class='bx bxs-bell icon' ></i>
				<span class="badge">5</span>
			</a>
			<a href="#" class="nav-link">
				<i class='bx bxs-message-square-dots icon' ></i>
				<span class="badge">8</span>
			</a>
			<span class="divider"></span>
			<div class="profile">
				<img src="images/Profile.jpeg">
				<ul class="profile-link">
					<li><a href="#"><i class='bx bxs-user-circle icon' ></i> Profile</a></li>
					<li><a href="#"><i class='bx bxs-cog' ></i> Settings</a></li>
					<li><a href="#"><i class='bx bxs-log-out-circle' ></i> Logout</a></li>
				</ul>
			</div>
		</nav>
    </section>
    <main>
            <h1 class="title">Orders Management</h1>
            <ul class="details">
                <li><a href="dash.html">Home</a></li>
                <li class="divider">/</li>
                <li><a href="#" class="active">Orders</a></li>
            </ul>

            <div class="orders-header">
                <h2>Available Orders</h2>
            </div>
            
            <div class="available-orders">
                <div class="order-row">
                    <div class="order-info">
                        <span class="order-id">#ORD-001</span>
                        <span class="order-date">Jan 15, 2024</span>
                        <span class="order-details">Engine Supply</span>
                        
                        <span class="manager-id">MGR001</span>
                    </div>
                </div>
                <div class="order-row">
                    <div class="order-info">
                        <span class="order-id">#ORD-002</span>
                        <span class="order-date">Jan 16, 2024</span>
                        <span class="order-details">Supplies</span>
                        
                        <span class="manager-id">MGR002</span>
                    </div>
                </div>
                <div class="order-row">
                    <div class="order-info">
                        <span class="order-id">#ORD-003</span>
                        <span class="order-date">Jan 17, 2024</span>
                        <span class="order-details">oil Order</span>
                        
                        <span class="manager-id">MGR003</span>
                    </div>
                </div>
            </div>
            
            <div class="order-container">
                    <div class="new-order-section">
                        <h2>Add New Order details</h2>
            

                        
                        <form action="O_InsertServlet" id="newOrderForm" class="order-form" method="post">
                            <div class="form-row">
                                
                                <div class="form-group">
                                    <label for="orderDate">Order Date</label>
                                    <input type="date" id="Date" name="Date" required>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="orderDetails">Order Details</label>
                                <textarea id="Details" name="Details" rows="4" required></textarea>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="orderCost">Cost</label>
                                    <input type="number" id="Cost" name="Cost" step="0.01" required>
                                </div>
                                <div class="form-group">
                                    <label for="orderStatus">Status</label>
                                    <select id="Status" name="Status" required>
                                        <option value="">Select Status</option>
                                        <option value="pending">Pending</option>
                                        <option value="completed">Completed</option>
                                        <option value="rejected">Rejected</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="form-actions">
                                <button type="submit" class="btn-submit">Add Order</button>
                                <button type="reset" class="btn-reset">Clear Form</button>
                            </div>
                        </form>
                         </div>
                </div>
                        
                         </main>
      
    <script src="JS/A_dash.js"></script>
                   
</div> 
</body>
</html>

