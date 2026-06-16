package com.drivesmart.controller;

/**
 *
 * @S74377_Lukman
 */
import com.drivesmart.model.SessionBean;
import com.drivesmart.dao.SessionDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookSessionServlet")
public class BookSessionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Retrieve parameters from HTML form
        String studentName = request.getParameter("student_name");
        String branchLocation = request.getParameter("branch_location");
        String lessonType = request.getParameter("lesson_type");
        
        // Instantiate SessionBean and set values
        SessionBean session = new SessionBean();
        session.setStudentName(studentName);
        session.setBranchLocation(branchLocation);
        session.setLessonType(lessonType);
        session.setStatus("Booked");  // Default status
        
        // Save using DAO
        SessionDAO dao = new SessionDAO();
        boolean success = dao.bookSession(session);
        
        // Redirect to Schedule Servlet
        response.sendRedirect("ScheduleServlet");
    }
}