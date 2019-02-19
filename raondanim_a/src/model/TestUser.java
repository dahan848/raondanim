package model;


public class TestUser {
    private int st; //상태값 디폴트0  
	private String email; //아이디
	private String pass; //비번 
	public int getSt() {
		return st;
	}
	public void setSt(int st) {
		this.st = st;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "test_user [st=" + st + ", email=" + email + ", pass=" + pass + "]";
	}
	
}
