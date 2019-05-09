package Model;
public class Login 
{
    private String em;
    private String pwd;
    private String type;
    public Login() {}

    public Login(String em, String pwd, String type) {
        this.em = em;
        this.pwd = pwd;
        this.type = type;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    public boolean equals(Object o ){
        
        HRSignup s = (HRSignup)o;
        
        if( this.em.equals(s.getEm()) && this.pwd.equals(s.getPwd())&& this.type.equals(s.getType()) )
            return true;
        return false;
        
    }
}
