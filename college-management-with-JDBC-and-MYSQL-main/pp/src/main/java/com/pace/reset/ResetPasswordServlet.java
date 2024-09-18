package com.pace.reset;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/resetPassword")
public class ResetPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String newPassword = request.getParameter("newPassword");

        Connection con = null;
        PreparedStatement pst = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register", "root", "Root");
            pst = con.prepareStatement("UPDATE students SET upassword = ? WHERE uemail = ?");
            pst.setString(1, newPassword);
            pst.setString(2, email);

            int rowCount = pst.executeUpdate();

            if (rowCount > 0) {
                request.setAttribute("status", "resetSuccess");
            } else {
                request.setAttribute("status", "emailNotFound");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) con.close();
                if (pst != null) pst.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        // Forward to resetPassword.html for displaying the alert
        request.getRequestDispatcher("resetPassword.jsp").forward(request, response);
    }
}
