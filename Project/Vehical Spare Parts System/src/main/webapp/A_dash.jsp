<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="CSS/A_Sdash.css">
<title>Supplier Dashboard</title>
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
    </div>
    
    <main>
        <h1 class="title">Supplier Dashboard</h1>
        <ul class="details">
            <li><a href="#">Home</a></li>
            <li class="divider">/</li>
            <li><a href="#" class="active">Dashboard</a></li>
        </ul>
        <div class="info-data">
            <div class="card">
                <div class="head">
                    <div>
                        <h2>500</h2>
                        <p>Sales</p>
                    </div>
                    <i class='bx bx-trending-up icon' ></i>
                </div>
                <span class="progress" data-value="60%"></span>
                <span class="label">60%</span>
            </div>
            <div class="card">
                <div class="head">
                    <div>
                        <h2>50</h2>
                        <p>Rejected Orders</p>
                    </div>
                    <i class='bx bx-trending-down icon down' ></i>
                </div>
                <span class="progress" data-value="20%"></span>
                <span class="label">20%</span>
            </div>
            <div class="card">
                <div class="head">
                    <div>
                        <h2>200</h2>
                        <p>Reviews</p>
                    </div>
                    <i class='bx bx-trending-up icon' ></i>
                </div>
                <span class="progress" data-value="30%"></span>
                <span class="label">30%</span>
            </div>
            <div class="card">
                <div class="head">
                    <div>
                        <h2>235</h2>
                        <p>Stocks</p>
                    </div>
                    <i class='bx bx-trending-up icon' ></i>
                </div>
                <span class="progress" data-value="80%"></span>
                <span class="label">80%</span>
            </div>
        </div>
        <div class="chatbox">
            <div class="chat-title">Chat Box</div>
           
            <div class="chatbox">
                <div class="chat-title">
                    <h3>Message Box</h3>
                </div>
                
                <div id="chatBox" class="massage_container">
                    <div class="message">
                        <div class="sender">
                            <p>Hello!<br>How can we help you?</p>
                        </div>
                    </div>
                    <div class="message">
                        <div class="receiver">
                            <p>Hello!</p>
                        </div>
                    </div>
                </div>
                
                <div class="chat-input">
                    <input type="text" id="messageInput" placeholder="Type your message..." />
                    <div class="message_container">
                        <button onclick="sendMessage()" class="button">
                            <i class='bx bx-send'></i>
                            Send
                        </button>
                    </div>
                </div>
            </div>
        
            <div class="chart-box">
                <div class="chart-title">
                    <h3>Analytics Dashboard</h3>
                </div>
                
                <div id="chartContainer" class="chart-content">
                    <div class="chart-wrapper">
                        <img src="images/chart.gif" alt="Chart Icon">
                    </div>
                </div>
                
                <div class="chart-footer">
                    <div class="chart-actions">
                        <button class="chart-button">
                            <i class='bx bx-refresh'></i>
                            Update
                        </button>
                    </div>
                </div>
            </div>
            </main>
            
<script src="JS/A_dash.js"></script>

</body>
</html>