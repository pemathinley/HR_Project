package Model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Attendance
{
    private String name ;
    @Id
    private String em;
    private int tday;
    private int pday;

    public Attendance(){}

    public Attendance(String name, String em, int tday, int pday)
    {
        this.name = name;
        this.em = em;
        this.tday = tday;
        this.pday = pday;
    }

    public int getTday() {
        return tday;
    }

    public void setTday(int tday) {
        this.tday = tday;
    }

    public int getPday() {
        return pday;
    }

    public void setPday(int pday) {
        this.pday = pday;
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
    
}
