
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

import java.util.*;    
import javax.mail.*;    
import javax.mail.internet.*; 

class  Mailer {  
    public static void send(final String from,final String password,String to,String sub,String msg){  
          //Get properties object    
          Properties props = new Properties();    
          props.put("mail.smtp.host", "smtp.gmail.com");    
          props.put("mail.smtp.socketFactory.port", "465");    
          props.put("mail.smtp.socketFactory.class",    
                    "javax.net.ssl.SSLSocketFactory");    
          props.put("mail.smtp.auth", "true");    
          props.put("mail.smtp.port", "465");    
          //get Session   
          Session session = Session.getDefaultInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication(from,password);  
           }    
          });    
          //compose message    
          try {    
           MimeMessage message = new MimeMessage(session);    
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
           message.setSubject(sub);    
           message.setText(msg);    
           //send message  
           Transport.send(message);    
           System.out.println("message sent successfully");    
          } catch (MessagingException e) {throw new RuntimeException(e);}    
             
    }  
}
public class companyReg extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            int companyid = 0;
            int deptid[] = new int[6];
            String cse,mec,civ,eee,ece;
            cse="0";
            ece="0";
            civ="0";
            civ="0";
            mec="0";
            eee="0";
            String name = request.getParameter("name").toUpperCase();
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
            String job_profile = request.getParameter("job_profile").toUpperCase();
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
                        int cse1=0,ece1=0,mec1=0,civ1=0,eee1=0;
                        String getid = "select * from company where name=?";
                        PreparedStatement stmtid = con.prepareStatement(getid);
                        stmtid.setString(1,name);
                        ResultSet rsid = stmtid.executeQuery();
                        if(rsid.next())
                        {
                            companyid = rsid.getInt(1);
                            cse1 = rsid.getInt(3);
                            ece1 = rsid.getInt(4);
                            mec1 = rsid.getInt(7);
                            civ1 = rsid.getInt(5);
                            eee1 = rsid.getInt(6);
                        }
                        int i=1;
                        if(cse1==1)
                            deptid[i++]=1;
                        if(ece1==1)
                            deptid[i++]=2;
                        if(mec1==1)
                            deptid[i++]=3;
                        if(civ1==1)
                            deptid[i++]=4;
                        if(eee1==1)
                            deptid[i++]=5;
                        out.println(cse1+" "+ece1+" "+mec1+" "+civ1+" "+eee1);
                        out.println(i);
                        String sql2 = "select bgeneral.roll,bgeneral.fname,bgeneral.lname,bgeneral.mob1,bgeneral.email "
                                + "from bschool,bgraduate,bgeneral where (bschool.percent10 >= ? and bschool.percent12 >= ?) and "
                                + "bgraduate.total >= ? and bschool.roll = bgraduate.roll and bschool.roll = bgeneral.roll and bgeneral.deptid in ("+deptid[1];
                                   for(int j = 2; j < i; j++)
                                       sql2 += ","+deptid[j];
                               sql2 += ")";
                               out.println(sql2);
                        PreparedStatement stmt2 = con.prepareStatement(sql2);
                        stmt2.setDouble(1,percent10);
                        stmt2.setDouble(2,percent12);
                        stmt2.setDouble(3,cgpa1);
                        ResultSet rs2 =  stmt2.executeQuery();
                        HttpSession sess = request.getSession();
                        sess.setAttribute("rs",rs2);
                        String sql = "select bgeneral.roll,bgeneral.fname,bgeneral.lname,bgeneral.mob1,bgeneral.email "
                                + "from bschool,bgraduate,bgeneral where (bschool.percent10 >= ? and bschool.percent12 >= ?) and "
                                + "bgraduate.total >= ? and bschool.roll = bgraduate.roll and bschool.roll = bgeneral.roll and bgeneral.deptid in ("+deptid[1];
                                   for(int j = 2; j < i; j++)
                                       sql += ","+deptid[j];
                               sql += ")";
                        PreparedStatement stmt1 = con.prepareStatement(sql);
                        stmt1.setDouble(1,percent10);
                        stmt1.setDouble(2,percent12);
                        stmt1.setDouble(3,cgpa1);
                        ResultSet rs1 = stmt1.executeQuery();
                        while(rs1.next())
                        {
                            Mailer.send("deepakkumarvishwakarma12@gmail.com","7533978164",rs1.getString(5),"Notification "+name,"Dear "+rs1.getString(2)+",\n\n"
                            + "You are shortlisted for the campus placement for "+name+"."
                            + " Last date for filling willingness form is "+last_date+".\n\nKindly report to T&P cell Nit Uk or visit our website http://www.nituk.ac.in/t&p.php for more"
                            + " information\n\n"
                            + "Thanks & Regards\n\nT&P Cell,\nNit Uttarakhand\nContact- 01346-257400/412");
                            
                            String shortlist = "insert into shortlist(companyid,roll) values(?,?)";
                            PreparedStatement stmtsh = con.prepareStatement(shortlist);
                            stmtsh.setInt(1,companyid);
                            stmtsh.setString(2,rs1.getString(1));
                            stmtsh.executeUpdate();
                        }
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
