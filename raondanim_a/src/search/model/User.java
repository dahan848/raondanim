package search.model;

import java.sql.Date;

public class User {
	private int num;
	private int st;
	private String id;
	private String pw;
	private String fmn;
	private String lmn;
	private Date regDate;
	private String verify;
	private String verfiyCode;
	private String nick;
	private String nation;
	private String city;
	private String trStyles;
	private String phoneNum;
	private String intro;
	private int accomSt;
	private Date birthDate;
	private int gender;
	private String profilePic;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getSt() {
		return st;
	}
	public void setSt(int st) {
		this.st = st;
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
	public String getFmn() {
		return fmn;
	}
	public void setFmn(String fmn) {
		this.fmn = fmn;
	}
	public String getLmn() {
		return lmn;
	}
	public void setLmn(String lmn) {
		this.lmn = lmn;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getVerify() {
		return verify;
	}
	public void setVerify(String verify) {
		this.verify = verify;
	}
	public String getVerfiyCode() {
		return verfiyCode;
	}
	public void setVerfiyCode(String verfiyCode) {
		this.verfiyCode = verfiyCode;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getTrStyles() {
		return trStyles;
	}
	public void setTrStyles(String trStyles) {
		this.trStyles = trStyles;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getAccomSt() {
		return accomSt;
	}
	public void setAccomSt(int accomSt) {
		this.accomSt = accomSt;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getProfilePic() {
		return profilePic;
	}
	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}
	
	@Override
	public String toString() {
		return "User [num=" + num + ", st=" + st + ", id=" + id + ", pw=" + pw + ", fmn=" + fmn + ", lmn=" + lmn
				+ ", regDate=" + regDate + ", verify=" + verify + ", verfiyCode=" + verfiyCode + ", nick=" + nick
				+ ", nation=" + nation + ", city=" + city + ", trStyles=" + trStyles + ", phoneNum=" + phoneNum
				+ ", intro=" + intro + ", accomSt=" + accomSt + ", birthDate=" + birthDate + ", gender=" + gender
				+ ", profilePic=" + profilePic + "]";
	}
}