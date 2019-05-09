package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class LoginDAO 
{
    public boolean check( Login l )
    {
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        HRSignup s = null;
        
        try
        {
            cf = new Configuration();
            cf.configure("cfgpackage/hibernate.cfg.xml");
            sf = cf.buildSessionFactory();
            session = sf.openSession();
            Transaction tx = session.beginTransaction();
            s = (HRSignup)session.get(HRSignup.class, l.getEm());
            System.out.println(s.getEm());
            tx.commit();
        }
        catch(Exception e ){
            e.printStackTrace();
        }
        finally{
            
            session.close();
            sf.close();
        }
        
        if( l.equals(s))
            return true;
        return false;
    }
}
