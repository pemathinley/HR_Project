package Controller;

import Model.Attendance;
import Model.HRSignup;
import Model.SalCal;
import Model.Salary;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class updateEmp extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String name = request.getParameter("nm");
            String em = request.getParameter("mail");
            String pwd = request.getParameter("pwd");
            String ph = request.getParameter("cont");
            String des = request.getParameter("desg");
            String gen = request.getParameter("gender");
            String type = request.getParameter("type");
            String addr = request.getParameter("addr");
            
            Configuration cf = null;
            SessionFactory sf = null;
            Session session = null;

            try
            {
                cf = new Configuration();
                cf.configure("cfgpackage/hibernate.cfg.xml");
                sf = cf.buildSessionFactory();
                session = sf.openSession();
                Transaction tx = session.beginTransaction();
                
                HRSignup hs = (HRSignup)session.get(HRSignup.class,em);
                SalCal s = (SalCal)session.get(SalCal.class,em);
                Attendance a = (Attendance)session.get(Attendance.class,em);
                Salary ss = (Salary)session.get(Salary.class, em);
                
                if( s != null )
                {
                    hs.setName(name);
                    hs.setDes(des);
                    hs.setGen(gen);
                    hs.setPwd(pwd);
                    hs.setPh(ph);
                    hs.setType(type);
                    hs.setAdd1(addr);
                    
                    s.setName(name);
                    s.setDesg(des);
                
                    a.setName(name);
                
                    ss.setName(name);
                    ss.setDesg(des);
                    session.update(hs);
                    session.update(s);
                    session.update(a);
                    session.update(ss);
                }

                tx.commit();

                }
            catch(Exception e )
            {
                e.printStackTrace();
            }
            finally
            {
                session.close();
                sf.close();

            }
             RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
             rd.forward(request,response);   
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
