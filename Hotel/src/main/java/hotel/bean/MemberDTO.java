package hotel.bean;

public class MemberDTO {
   private String id;
   private String pw;
   private String name;
   private String email;
   private String birth;
   private String addr;
   private String pnum;
   private String cauto;
   
 
public String getCauto() {
   return cauto;
}
public void setCauto(String cauto) {
   this.cauto = cauto;
}
public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPw() {
      return pw;
   }
   public void setPw(String pw) {
      this.pw = pw;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public String getBirth() {
      return birth;
   }
   public void setBirth(String birth) {
      this.birth = birth;
   }
   public String getAddr() {
      return addr;
   }
   public void setAddr(String addr) {
      this.addr = addr;
   }
   public String getPnum() {
      return pnum;
   }
   public void setPnum(String pnum) {
      this.pnum = pnum;
   }
   
   
}
