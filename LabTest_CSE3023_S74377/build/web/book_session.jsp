<%-- 
    Document   : book_session
    Created on : 16 Jun 2026, 2:26:04 PM
    Author     : S74377_Lukman
--%>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<%@ include file="header.html" %>

<div class="container">
    <h2 style="text-align: center;">Book a Driving Lesson</h2>
    
    <form method="POST" action="BookSessionServlet">
        <label><strong>Student Name:</strong></label>
        <input type="text" name="student_name" required placeholder="Enter full name">
        
        <label><strong>Branch Location:</strong></label>
        <select name="branch_location" required>
            <option value="">-- Select Branch --</option>
            <option value="Kuala Lumpur">Kuala Lumpur</option>
            <option value="Penang">Penang</option>
            <option value="Johor">Johor</option>
        </select>
        
        <label><strong>Lesson Type:</strong></label>
        <select name="lesson_type" required>
            <option value="">-- Select Lesson Type --</option>
            <option value="Manual Car">Manual Car</option>
            <option value="Automatic Car">Automatic Car</option>
            <option value="Motorcycle">Motorcycle</option>
        </select>
        
        <button type="submit">Book Session</button>
    </form>
    
    <div style="text-align: center; margin-top: 20px;">
        <a href="index.jsp">Back to Home</a>
    </div>
</div>

<%@ include file="footer.jsp" %>
