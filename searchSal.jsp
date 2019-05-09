<%@page import="Model.Salary"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Salary</title>
        <style>
            #btable
            {
                border: 1px solid black;
                font-size: 25px;
                position: relative;
                top: 30px;
                border-collapse:collapse;
            }
            #btable th , #btable td
            {
                padding: 5px 15px 5px 15px;
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <%
            String val = request.getParameter("x");
            
            System.out.println(val);
            
            if(val==null || val.trim().equals("") )
            {
                 
            }
            else
            {
                Configuration cf = null;
                SessionFactory sf = null;
                Session ses = null;

                try
                {
                    cf = new Configuration();
                    cf.configure("cfgpackage/hibernate.cfg.xml");
                    sf = cf.buildSessionFactory();
                    ses = sf.openSession();
                    Transaction tx = ses.beginTransaction();
                   
                    Query query = ses.createQuery("from Salary where em like '"+val+"%' ");
                    List<Salary> record = query.list();

                    out.print("<center><table id='dtable'>");
                    out.print("<tr><th>Sl.No</th><th>Employee Name</th><th>Employee Email</th><th>Designation</th><th>Basic</th></tr>");

                    int i = 1;
                    for(Salary s : record )
                    {
                        out.print("<tr> <td>"+i+"</td>  <td>"+s.getName()+"</td> <td>"+s.getEm()+"</td> <td>"+s.getDesg()+"</td> <td>"+s.getBasic()+"</td></tr>");
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
                }
        %>
    </body>
</html>
