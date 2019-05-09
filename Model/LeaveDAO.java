package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class LeaveDAO 
{
    public void apply(Leave ls)
    {
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
            session.save(ls);
            tx.commit();
        }
        catch(Exception ee)
        {
            ee.printStackTrace();
        }
        finally
        {
            session.close();
            sf.close();
        }
    }
}
