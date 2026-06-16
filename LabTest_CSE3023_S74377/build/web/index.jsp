<%-- 
    Document   : index
    Created on : 16 Jun 2026, 2:24:58 PM
    Author     : S74377_Lukman
--%>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<%@ include file="header.html" %>

<div class="container">
    <h2 style="text-align: center;">Welcome to Drive Smart Central System</h2>
    
    <div class="nav-menu">
        <a href="book_session.jsp">Book a Driving Session</a>
        <a href="ScheduleServlet">View Centralized Schedule</a>
    </div>
    
    <div style="text-align: center;">
        <h3>Available Branches Nationwide:</h3>
        <ul style="display: inline-block; text-align: left; list-style-type: disc; padding-left: 20px;">
            <li>Kuala Lumpur</li>
            <li>Penang</li>
            <li>Johor</li>
        </ul>
    </div>
</div>

<%@ include file="footer.jsp" %>
