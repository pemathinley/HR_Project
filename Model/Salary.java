package Model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Salary 
{
    private String name;
    @Id
    private String em;
    private String desg;
    private int basic;

    public Salary() {
    }

    public Salary(String name, String em, String desg, int basic) {
        this.name = name;
        this.em = em;
        this.desg = desg;
        this.basic = basic;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEm() {
        return em;
    }

    public void setEm(String em) {
        this.em = em;
    }

    public String getDesg() {
        return desg;
    }

    public void setDesg(String desg) {
        this.desg = desg;
    }

    public int getBasic() {
        return basic;
    }

    public void setBasic(int basic) {
        this.basic = basic;
    }
}
