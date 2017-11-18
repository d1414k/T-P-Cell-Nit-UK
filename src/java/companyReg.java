/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author deepa
 */
public class companyReg extends HttpServlet {

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
            String cse,mec,civ,eee,ece;
            cse="0";
            ece="0";
            civ="0";
            civ="0";
            mec="0";
            eee="0";
            String name = request.getParameter("name");
            cse = request.getParameter("cse");
            ece = request.getParameter("ece");
            civ = request.getParameter("civ");
            eee = request.getParameter("eee");
            mec = request.getParameter("mec");
            if(cse==null)
                cse="0";
            if(ece==null)
                ece="0";
            if(civ==null)
                civ="0";
            if(eee==null)
                eee="0";
            if(mec==null)
                mec="0";
            String th10 = request.getParameter("10th");
            String th12 = request.getParameter("12th");
            String cgpa = request.getParameter("cgpa");
            String p1 = request.getParameter("p1");
            String p2 = request.getParameter("p2");
            String job_profile = request.getParameter("job_profile");
            String last_date = request.getParameter("last_date");
            int percent10 = Integer.parseInt(th10);
            int percent12 = Integer.parseInt(th12);
            double cgpa1 = Double.parseDouble(cgpa);
            int x=-1,y = -1;
            try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tp","root","");
                String str = "insert into company (name,cse,ece,civ,eee,mec,10th,12th,cgpa,p1,p2,job_profile,last_date) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement stmt = con.prepareStatement(str);
                stmt.setString(1,name);
                stmt.setInt(2,Integer.parseInt(cse));
                stmt.setInt(3,Integer.parseInt(ece));
                stmt.setInt(4,Integer.parseInt(civ));
                stmt.setInt(5,Integer.parseInt(eee));
                stmt.setInt(6,Integer.parseInt(mec));
                stmt.setDouble(7,Double.parseDouble(th10));
                stmt.setDouble(8,Double.parseDouble(th12));
                stmt.setDouble(9,Double.parseDouble(cgpa));
                stmt.setDouble(10,Double.parseDouble(p1));
                stmt.setDouble(11,Double.parseDouble(p2));
                stmt.setString(12,job_profile);
                stmt.setString(13,last_date);
                x = stmt.executeUpdate();
                if(x != -1)
                    {
                        //out.println("Welcome");
                        String sql = "select bgeneral.roll,bgeneral.fname,bgeneral.lname,bgeneral.mob1,bgeneral.email from bschool,bgraduate,bgeneral where (bschool.percent10 >= ? and bschool.percent12 >= ?) and bgraduate.total >= ? and bschool.roll = bgraduate.roll and bschool.roll = bgeneral.roll";
                        PreparedStatement stmt1 = con.prepareStatement(sql);
                        stmt1.setDouble(1,percent10);
                        stmt1.setDouble(2,percent12);
                        stmt1.setDouble(3,cgpa1);
                        ResultSet rs1 =  stmt1.executeQuery();
                        HttpSession sess = request.getSession();
                        sess.setAttribute("rs",rs1);
                        response.sendRedirect("selectedList.jsp");
                    }
                else
                    response.sendRedirect("admin.jsp");
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
