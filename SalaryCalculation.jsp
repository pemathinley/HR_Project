<%@page import="Model.Attendance"%>
<%@page import="Model.Salary"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Driver</title>
        <style>
            #cbForm
            {
                margin-top: 30px;
                background-color: darkcyan;
                padding: 20px;
                border-radius: 10px;
                color: white;
            }
            
            #cbForm form select
            {
                text-align: center;
                height: 50px;
                width: 400px;
                margin: 10px;
                outline: none;
                border-radius: 10px; 
            }
            
            #cbForm form input[type="submit"]
            {
                color: white;
                background-color: crimson;
                border-radius: 10px;
                height: 45px;
                width: 150px;
                outline: none;
                border: none;
            }
            
            #cbForm form select[name="mail"]
            {
                margin-left: 83px;
            }
            
            #cbForm form select[name="desg"]
            {
                margin-left: 40px;
            }
            
            #cbForm form select[name="pday"]
            {
                margin-left: 70px;  
            }
            
            #cbForm form select[name="basic"]
            {
                margin-left: 80px;
            }
            
        </style>
    </head>
    <body>
        <%
            Configuration cf = null;
            SessionFactory sf = null;
            Session ses = null;
            List<Salary> rec1 = null;
            List<Attendance> rec2= null;    
            
            try
            {
                cf = new Configuration();
                cf.configure("cfgpackage/hibernate.cfg.xml");
                sf = cf.buildSessionFactory();
                ses = sf.openSession();
                Transaction tx = ses.beginTransaction();
                
                Criteria criteria1 = ses.createCriteria(Salary.class);
                Criteria criteria2 = ses.createCriteria(Attendance.class);
                
                rec1 = criteria1.list();
                rec2 = criteria2.list();

                out.print("<center><div id='cbForm'><form action='SalCalServlet' method='post'>");
                
                out.print("Email : <select name='mail'>");
                for(Salary s : rec1)
                {
                    out.print("<option>"+s.getEm()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("Employee Name : <select name='nm'>");
                for(Salary s : rec1)
                {
                    out.print("<option>"+s.getName()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("Designation : <select name='desg'>");
                for(Salary s : rec1)
                {
                    out.print("<option >"+s.getDesg()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("Basic : <select name='basic'>");
                for( Salary s : rec1)
                {
                    out.print("<option>"+s.getBasic()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("Present : <select name='pday'>");
                for(Attendance a : rec2)
                {
                    out.print("<option>"+a.getPday()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("<input type='submit' value='Calculate'>");
                out.print("</form></div></center>");
                tx.commit();
                
            }
            catch(Exception ee)
            {
                System.out.println(ee);
            }
            finally
            {
                ses.close();
                sf.close();
            }
 
        %>
    </body>
</html>
