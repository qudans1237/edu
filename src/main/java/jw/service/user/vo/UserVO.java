package jw.service.user.vo;

public class UserVO
{
    private String id;
    private String pwd;
    private int no;
    private boolean active;
    
    public String getId() {
        return this.id;
    }
    
    public String getPwd() {
        return this.pwd;
    }
    
    public int getNo() {
        return this.no;
    }
    
    public boolean isActive() {
        return this.active;
    }
    
    public void setId(final String id) {
        this.id = id;
    }
    
    public void setPwd(final String pwd) {
        this.pwd = pwd;
    }
    
    public void setNo(final int no) {
        this.no = no;
    }
    
    public void setActive(final boolean active) {
        this.active = active;
    }
    
    @Override
    public String toString() {
        return "UserVO [id=" + this.id + ", pwd=" + this.pwd + ", no=" + this.no + ", active=" + this.active + "]";
    }
}