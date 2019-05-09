package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Leave 
{
    private String empname;
    private String empdesg;
    @Id
    private String empemail;
    private String empsdate;
    private String emprdate;
    private String empreason;

    public Leave(){}
    public Leave(String empname , String empdesg , String empemail , String empsdate , String emprdate , String empreason)
    {
        this.empname = empname;
        this.empdesg = empdesg;
        this.empemail = empemail;
        this.empsdate = empsdate;
        this.emprdate = emprdate;
        this.empreason = empreason;
    }

    public String getEmpname() {
        return empname;
    }

    public void setEmpname(String empname) {
        this.empname = empname;
    }

    public String getEmpdesg() {
        return empdesg;
    }

    public void setEmpdesg(String empdesg) {
        this.empdesg = empdesg;
    }

    public String getEmpemail() {
        return empemail;
    }

    public void setEmpemail(String empemail) {
        this.empemail = empemail;
    }

    public String getEmpsdate() {
        return empsdate;
    }

    public void setEmpsdate(String empsdate) {
        this.empsdate = empsdate;
    }

    public String getEmprdate() {
        return emprdate;
    }

    public void setEmprdate(String emprdate) {
        this.emprdate = emprdate;
    }

    public String getEmpreason() {
        return empreason;
    }

    public void setEmpreason(String empreason) {
        this.empreason = empreason;
    }
     
    
}
