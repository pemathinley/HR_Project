<%@page import="Model.HRSignup"%>
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
        <title>view Emp</title>
        <style>
            #dtable
            {
                border: 1px solid black;
                font-size: 15px;
                position: relative;
                top: 30px;
                border-collapse:collapse;
            }
            #dtable th , #dtable td
            {
                padding: 5px 15px 5px 15px;
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <%
            Configuration cf = null;
            SessionFactory sf = null;
            Session ses = null;
            List<HRSignup> record = null;
            try
            {
                cf = new Configuration();
                cf.configure("cfgpackage/hibernate.cfg.xml");
                sf = cf.buildSessionFactory();
                ses = sf.openSession();
                Transaction tx = ses.beginTransaction();

                Criteria criteria = ses.createCriteria(HRSignup.class);
                record = criteria.list();               

                out.print("<center><table id='dtable'>");
                out.print("<tr><th>Sl.No</th><th>Employee Name</th><th>Employee Email</th><th>Designation</th><th>Contact</th><th>Gender</th><th>Password</th><th>Address</th><th>Account Type</th></tr>");

                int i = 1;
                for(HRSignup  hs : record )
                {
                    out.print("<tr> <td>"+i+"</td>  <td>"+hs.getName()+"</td> <td>"+hs.getEm()+"</td> <td>"+hs.getDes()+"</td> <td>"+hs.getPh()+"</td><td>"+hs.getGen()+"</td> <td>"+hs.getPwd()+"</td><td>"+hs.getAdd1()+"</td><td>"+hs.getType()+"</td></tr>");
                    i++;
                }

                out.print("</table></center>");
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
