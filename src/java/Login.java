/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 *
 * @author deepa
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String roll = request.getParameter("roll").toUpperCase();
            String pass = request.getParameter("pass");
            byte[] valueDecoded= Base64.encodeBase64(pass.getBytes());//decoding part
            String encoded_pass=new String(valueDecoded);
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tp","root","");
                String str = "select * from buser where roll = ? and password = ?";
                PreparedStatement stmt = con.prepareStatement(str);
                stmt.setString(1,roll);
                stmt.setString(2,encoded_pass);
                ResultSet rs = stmt.executeQuery();
                if(rs.next())
                {
                    HttpSession sess = request.getSession();
                    sess.setAttribute("roll", roll);
                    out.println("<script>");
                    //out.println("setTimeout(function() {document.location = 'student.jsp';}, 1000000000000)");
                    out.println("document.location='student.jsp'");
                    out.println("</script>");
                }
                else
                {
                    out.println(encoded_pass);
                    out.println("<script>");
                    out.println("alert('Either Roll No. or Password is Incorrect.')");
                    out.println("document.location='index.jsp'");
                    out.println("</script>");
                }
                con.close();
            }
            catch(Exception e)
            {
                out.println(e);
            }
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
