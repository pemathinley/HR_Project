package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class SalCal 
{
    @Id
    private String email;
    private String name;
    private String desg;
    private int pday; 
    private int basic;
    private int net;

    public SalCal(){}

    public SalCal(String email, String name , String desg , int pday , int basic , int net)
    {
        this.email = email;
        this.name = name;
        this.desg = desg;
        this.pday = pday;
        this.basic = basic;
        this.net = net;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesg() {
        return desg;
    }

    public void setDesg(String desg) {
        this.desg = desg;
    }

    public int getPday() {
        return pday;
    }

    public void setPday(int pday) {
        this.pday = pday;
    }

    public int getBasic() {
        return basic;
    }

    public void setBasic(int basic) {
        this.basic = basic;
    }

    public int getNet() {
        return net;
    }

    public void setNet(int net) {
        this.net = net;
    }
    
    
}
