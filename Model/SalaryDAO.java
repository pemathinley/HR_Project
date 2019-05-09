package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class SalaryDAO 
{
    public void Save2(Salary s ){
        
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
            session.save(s);
            tx.commit();
        }
        catch(Exception e ){
            e.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
    }
}
