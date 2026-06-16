<%--
    Document   : schedule.jsp
    Created on : 16 Jun 2026, 2:33:32 PM
    Author     : S74377_Lukman
--%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.drivesmart.model.SessionBean" %>

<%@ include file="header.html" %>

<div class="container">
    <h2 style="text-align: center;">Centralized Training Schedule</h2>
    
    <table border="1" style="width: 100%; border-collapse: collapse; background: white;">
        <tr style="background-color: #1a237e; color: white;">
            <th style="padding: 10px;">ID</th>
            <th style="padding: 10px;">Student Name</th>
            <th style="padding: 10px;">Branch</th>
            <th style="padding: 10px;">Lesson Type</th>
            <th style="padding: 10px;">Status</th>
        </tr>
        
        <%
            List<SessionBean> sessionList = (List<SessionBean>) request.getAttribute("sessionList");
            if (sessionList != null && !sessionList.isEmpty()) {
                for (SessionBean s : sessionList) {  // Changed from 'session' to 's'
        %>
        <tr>
            <td style="padding: 8px; text-align: center;"><%= s.getSessionId() %></td>
            <td style="padding: 8px;"><%= s.getStudentName() %></td>
            <td style="padding: 8px;"><%= s.getBranchLocation() %></td>
            <td style="padding: 8px;"><%= s.getLessonType() %></td>
            <td style="padding: 8px; text-align: center;"><%= s.getStatus() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5" style="padding: 20px; text-align: center;">No sessions found</td>
        </tr>
        <%
            }
        %>
    </table>
    
    <div style="text-align: center; margin-top: 20px;">
        <a href="index.jsp" style="color: #1a237e; text-decoration: none; font-weight: bold;">Back to Home</a>
    </div>
</div>

<%@ include file="footer.jsp" %>