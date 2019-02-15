package statics.model;

import java.util.Date;

public class User {
	
//    USER_NUM            NUMBER(10)       NOT NULL, 
//    USER_ST             NUMBER(10)       DEFAULT 0 NOT NULL, 
//    USER_ID             VARCHAR2(50)     NOT NULL, 
//    USER_PW             VARCHAR2(60)     NOT NULL, 
//    USER_FNM            VARCHAR2(50)     NOT NULL, 
//    USER_LNM            VARCHAR2(50)     NOT NULL, 
//    USER_REG_DATE       DATE             DEFAULT sysdate NOT NULL, 
//    USER_VERIFY         NUMBER(10)       DEFAULT 0 NOT NULL, 
//    USER_VERIFY_CODE    VARCHAR2(50)     NULL, 
//    USER_NICK           VARCHAR2(50)     NULL, 
//    USER_NATION         VARCHAR2(50)     NULL, 
//    USER_CITY           VARCHAR2(50)     NULL, 
//    USER_PHONE_NUM      VARCHAR2(30)     NULL, 
//    USER_INTRO          VARCHAR2(50)     NULL, 
//    USER_ACCOM_ST       NUMBER(10)       DEFAULT 0 NULL, 
//    USER_BIRTH_DATE     DATE             NULL, 
//    USER_GENDER         NUMBER(10)       DEFAULT 0 NULL, 
//    USER_PROFILE_PIC    VARCHAR2(100)    DEFAULT '0' NOT NULL, 

	
	int user_Num;
	int user_St;//상태값
	String user_Id;//이메일형식
	String user_Pw;
	String user_Fnm;//성
	String user_Lnm;//이름
	Date user_Reg_Date;
	int user_Verify;//이메일 인증여부
	int user_Verify_Code;//이메일 인증 코드
	String user_Nick;
	String user_Nation;
	String user_City;
	String user_Phone_Num;
	String user_Intro;
	int user_Accom_St;
	Date user_Birth_Date;
	int user_Gender;
	String user_Profile_Pic;
	
	
	
	public int getUser_Num() {
		return user_Num;
	}
	public void setUser_Num(int user_Num) {
		this.user_Num = user_Num;
	}
	public int getUser_St() {
		return user_St;
	}
	public void setUser_St(int user_St) {
		this.user_St = user_St;
	}
	public String getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}
	public String getUser_Pw() {
		return user_Pw;
	}
	public void setUser_Pw(String user_Pw) {
		this.user_Pw = user_Pw;
	}
	public String getUser_Fnm() {
		return user_Fnm;
	}
	public void setUser_Fnm(String user_Fnm) {
		this.user_Fnm = user_Fnm;
	}
	public String getUser_Lnm() {
		return user_Lnm;
	}
	public void setUser_Lnm(String user_Lnm) {
		this.user_Lnm = user_Lnm;
	}
	public Date getUser_Reg_Date() {
		return user_Reg_Date;
	}
	public void setUser_Reg_Date(Date user_Reg_Date) {
		this.user_Reg_Date = user_Reg_Date;
	}
	public int getUser_Verify() {
		return user_Verify;
	}
	public void setUser_Verify(int user_Verify) {
		this.user_Verify = user_Verify;
	}
	public int getUser_Verify_Code() {
		return user_Verify_Code;
	}
	public void setUser_Verify_Code(int user_Verify_Code) {
		this.user_Verify_Code = user_Verify_Code;
	}
	public String getUser_Nick() {
		return user_Nick;
	}
	public void setUser_Nick(String user_Nick) {
		this.user_Nick = user_Nick;
	}
	public String getUser_Nation() {
		return user_Nation;
	}
	public void setUser_Nation(String user_Nation) {
		this.user_Nation = user_Nation;
	}
	public String getUser_City() {
		return user_City;
	}
	public void setUser_City(String user_City) {
		this.user_City = user_City;
	}
	public String getUser_Phone_Num() {
		return user_Phone_Num;
	}
	public void setUser_Phone_Num(String user_Phone_Num) {
		this.user_Phone_Num = user_Phone_Num;
	}
	public String getUser_Intro() {
		return user_Intro;
	}
	public void setUser_Intro(String user_Intro) {
		this.user_Intro = user_Intro;
	}
	public int getUser_Accom_St() {
		return user_Accom_St;
	}
	public void setUser_Accom_St(int user_Accom_St) {
		this.user_Accom_St = user_Accom_St;
	}
	public Date getUser_Birth_Date() {
		return user_Birth_Date;
	}
	public void setUser_Birth_Date(Date user_Birth_Date) {
		this.user_Birth_Date = user_Birth_Date;
	}
	public int getUser_Gender() {
		return user_Gender;
	}
	public void setUser_Gender(int user_Gender) {
		this.user_Gender = user_Gender;
	}
	public String getUser_Profile_Pic() {
		return user_Profile_Pic;
	}
	public void setUser_Profile_Pic(String user_Profile_Pic) {
		this.user_Profile_Pic = user_Profile_Pic;
	}
	
	@Override
	public String toString() {
		return "User [user_Num=" + user_Num + ", user_St=" + user_St + ", user_Id=" + user_Id + ", user_Pw=" + user_Pw
				+ ", user_Fnm=" + user_Fnm + ", user_Lnm=" + user_Lnm + ", user_Reg_Date=" + user_Reg_Date
				+ ", user_Verify=" + user_Verify + ", user_Verify_Code=" + user_Verify_Code + ", user_Nick=" + user_Nick
				+ ", user_Nation=" + user_Nation + ", user_City=" + user_City + ", user_Phone_Num=" + user_Phone_Num
				+ ", user_Intro=" + user_Intro + ", user_Accom_St=" + user_Accom_St + ", user_Birth_Date="
				+ user_Birth_Date + ", user_Gender=" + user_Gender + ", user_Profile_Pic=" + user_Profile_Pic + "]";
	}
	
	
	
	
	
	
}
