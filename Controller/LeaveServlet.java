package Controller;

import Model.Leave;
import Model.LeaveDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LeaveServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String name = request.getParameter("nm");
            String desg = request.getParameter("desg");
            String mail = request.getParameter("mail");
            String sdate = request.getParameter("sdate");
            String rdate = request.getParameter("rdate");
            String reason = request.getParameter("res");
            
            
            System.out.println(name);
            System.out.println(desg);
            System.out.println(mail);
            System.out.println(sdate);
            System.out.println(rdate);
            System.out.println(reason);
            
            Leave ls = new Leave(name,desg,mail,sdate,rdate,reason);
            
            LeaveDAO lsd = new LeaveDAO();
            
            lsd.apply(ls);
            
            RequestDispatcher rd = request.getRequestDispatcher("ApplyLeave.jsp");
            rd.forward(request, response);
            
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
