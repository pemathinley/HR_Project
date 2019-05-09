package Controller;

import Model.HRSignup;
import Model.HRSignupDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HRSignupServlet extends HttpServlet 
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
            String add = request.getParameter("addr");
            
            System.out.println(name);
            System.out.println(em);
            System.out.println(pwd);
            System.out.println(ph);
            System.out.println(des);
            System.out.println(gen);
            System.out.println(type);
            System.out.println(add);
            
            
            HRSignup s = new HRSignup( name, em, pwd, ph, des, gen, type, add);
            HRSignupDAO s1 = new HRSignupDAO();
            s1.Save1(s);
            
            if ( type.equals("employee"))
            {
                System.out.println("in employeeee");
                RequestDispatcher rd = request.getRequestDispatcher("home.html");
                rd.forward(request,response);
            }
            else
            {
                 RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
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
