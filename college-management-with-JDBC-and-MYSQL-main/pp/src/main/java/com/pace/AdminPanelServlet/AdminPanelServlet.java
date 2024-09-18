package com.pace.AdminPanelServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminPanel")
public class AdminPanelServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register", "root", "Root");
                PreparedStatement pstmt = con.prepareStatement("DELETE FROM students WHERE id = ?");
                pstmt.setInt(1, id);
                pstmt.executeUpdate();
                con.close();
                
                response.sendRedirect("user-list.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                // Handle error
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String name = request.getParameter("uname");
            String email = request.getParameter("uemail");
            String password = request.getParameter("upassword");
            String contact = request.getParameter("ucontact");
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register", "root", "Root");
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO students (uname, uemail, upassword, ucontact) VALUES (?, ?, ?, ?)");
                pstmt.setString(1, name);
                pstmt.setString(2, email);
                pstmt.setString(3, password);
                pstmt.setString(4, contact);
                pstmt.executeUpdate();
                con.close();
                
                response.sendRedirect("user-list.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                // Handle error
            }
        } else if ("update".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("uname");
            String email = request.getParameter("uemail");
            String password = request.getParameter("upassword");
            String contact = request.getParameter("ucontact");
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register", "root", "Root");
                PreparedStatement pstmt = con.prepareStatement("UPDATE students SET uname=?, uemail=?, upassword=?, ucontact=? WHERE id=?");
                pstmt.setString(1, name);
                pstmt.setString(2, email);
                pstmt.setString(3, password);
                pstmt.setString(4, contact);
                pstmt.setInt(5, id);
                pstmt.executeUpdate();
                con.close();
                
                response.sendRedirect("user-list.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}