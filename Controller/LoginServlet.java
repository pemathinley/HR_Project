package Controller;

import Model.HRSignup;
import Model.Login;
import Model.LoginDAO;
import Model.Notice;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class LoginServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String em = request.getParameter("mail");
            String pwd = request.getParameter("pwd");
            String type = request.getParameter("type");
            
            Login l = new Login( em, pwd, type);
            LoginDAO l1 = new LoginDAO();
            
            HttpSession session1 = request.getSession();
            session1.setAttribute("mail",em);
            session1.setAttribute("type",type);
            
            HRSignup s = null;
            Notice n = null;
            
            
            Configuration cf = null;
            SessionFactory sf = null;
            Session session = null;
            List<Notice> list = null;
            try{

                cf = new Configuration();
                cf.configure("cfgpackage/hibernate.cfg.xml");
                sf = cf.buildSessionFactory();
                session = sf.openSession();

                Transaction tx = session.beginTransaction();
                s = (HRSignup)session.get(HRSignup.class, em);
//                        n = (Notice)session.get(Notice.class, 1);

                Criteria criteria = session.createCriteria(Notice.class);
                list = criteria.list(); 
                
                
                for ( Notice r : list )
                    System.out.println(r.getNotice());
                tx.commit();

                }
            catch(Exception e ){
                e.printStackTrace();
            }
            finally{

                session.close();
                sf.close();

            }
                    
                
                
//             System.out.println(n.getNotice());
//                HttpSession session1 = request.getSession();
                request.setAttribute("notice", list);
                session1.setAttribute("name", s.getName());
                session1.setAttribute("email", s.getEm());
                session1.setAttribute("pnumber", s.getPh());
                session1.setAttribute("title", s.getDes());

            
            if ( l1.check(l))
            {
                if ( type.equals("employee"))
                {
                    RequestDispatcher rd = request.getRequestDispatcher("Employee.jsp");
                    rd.forward(request,response);
                }
                else
                {
                    RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                    rd.forward(request,response);
                }
            }
            else
            {
                RequestDispatcher rd = request.getRequestDispatcher("signup.html");
                rd.forward(request,response);
            }
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
