package search.model;

import java.sql.Date;

public class Search {
	private int num;
	private int st;
	private String id;
	private String pw;
	private String fnm;
	private String lnm;
	private Date regDate;
	private int verify;
	private String verify_code;
	private String nick;
	private String nation;
	private String city;
	private String phone_num;
	private String intro;
	private int accom_st;
	private Date birth_date;
	private int gender;
	private String profile_pic;
	
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
	public String getFnm() {
		return fnm;
	}
	public void setFnm(String fnm) {
		this.fnm = fnm;
	}
	public String getLnm() {
		return lnm;
	}
	public void setLnm(String lnm) {
		this.lnm = lnm;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getVerify() {
		return verify;
	}
	public void setVerify(int verify) {
		this.verify = verify;
	}
	public String getVerify_code() {
		return verify_code;
	}
	public void setVerify_code(String verify_code) {
		this.verify_code = verify_code;
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
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getAccom_st() {
		return accom_st;
	}
	public void setAccom_st(int accom_st) {
		this.accom_st = accom_st;
	}
	public Date getBirth_date() {
		return birth_date;
	}
	public void setBirth_date(Date birth_date) {
		this.birth_date = birth_date;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getProfile_pic() {
		return profile_pic;
	}
	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}
	
	@Override
	public String toString() {
		return "Search [num=" + num + ", st=" + st + ", id=" + id + ", pw=" + pw + ", fnm=" + fnm + ", lnm=" + lnm
				+ ", regDate=" + regDate + ", verify=" + verify + ", verify_code=" + verify_code + ", nick=" + nick
				+ ", nation=" + nation + ", city=" + city + ", phone_num=" + phone_num + ", intro=" + intro
				+ ", accom_st=" + accom_st + ", birth_date=" + birth_date + ", gender=" + gender + ", profile_pic="
				+ profile_pic + "]";
	}
	
}