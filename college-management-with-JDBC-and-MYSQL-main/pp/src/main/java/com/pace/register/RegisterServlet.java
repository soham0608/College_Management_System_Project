package com.pace.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upassword = request.getParameter("password");
        String uconfirmPassword = request.getParameter("confirmPassword");
        String ucontact = request.getParameter("contact");

        if (uname == null || uemail == null || upassword == null || uconfirmPassword == null || ucontact == null ||
                uname.isEmpty() || uemail.isEmpty() || upassword.isEmpty() || uconfirmPassword.isEmpty() || ucontact.isEmpty()) {
            request.setAttribute("status", "formIncomplete");
            RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
            return;
        }

        if (!upassword.equals(uconfirmPassword)) {
            request.setAttribute("status", "passwordMismatch");
            RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
            return;
        }

        Connection con = null;
        RequestDispatcher dispatcher = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register", "root", "Root");
            PreparedStatement pst = con.prepareStatement("INSERT INTO students(uname,uemail,upassword,ucontact) VALUES(?,?,?,?)");
            pst.setString(1, uname);
            pst.setString(2, uemail);
            pst.setString(3, upassword);
            pst.setString(4, ucontact);
            int rowCount = pst.executeUpdate();

            if (rowCount > 0) {
                request.setAttribute("status", "success");

                // Get the updated total count
                int totalRegistrations = getTotalRegistrations(con);

                // Store the count in the session
                HttpSession session = request.getSession();
                session.setAttribute("totalRegistrations", totalRegistrations);

                dispatcher = request.getRequestDispatcher("login.jsp");
            } else {
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("register.jsp");
            }
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private int getTotalRegistrations(Connection con) throws SQLException {
        String query = "SELECT COUNT(*) AS total FROM students";
        try (PreparedStatement pst = con.prepareStatement(query);
             ResultSet rs = pst.executeQuery()) {
            if (rs.next()) {
                return rs.getInt("total");
            }
        }
        return 0;
    }
}