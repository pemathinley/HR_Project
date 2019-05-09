package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class HRSignup 
{
    private String name;
    @Id
    private String em;
    private String pwd;
    private String ph;
    private String des;
    private String gen;
    private String type;
    private String add1;

    public HRSignup() {
    }

    public HRSignup(String name, String em, String pwd, String ph, String des, String gen, String type , String add) {
        this.name = name;
        this.em = em;
        this.pwd = pwd;
        this.ph = ph;
        this.des = des;
        this.gen = gen;
        this.type = type;
        this.add1 = add;
    }

    public String getAdd1() {
        return add1;
    }

    public void setAdd1(String add) {
        this.add1 = add;
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

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getPh() {
        return ph;
    }

    public void setPh(String ph) {
        this.ph = ph;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getGen() {
        return gen;
    }

    public void setGen(String gen) {
        this.gen = gen;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}