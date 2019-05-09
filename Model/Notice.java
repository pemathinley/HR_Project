package Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Notice 
{
    private String notice;
    @Id
    @GeneratedValue
    private int id ;

    public Notice() {}
    
    public Notice(String notice) 
    {
        this.notice = notice;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }
    
}

