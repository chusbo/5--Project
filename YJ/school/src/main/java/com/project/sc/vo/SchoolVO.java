package com.project.sc.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("SchoolVO")
public class SchoolVO {
	private String attendance_no;		//출결-번호
	private String st_no;				//학생번호
	private Date attendance_date;		//출결-날짜
	private String attendance_status;	//출결-현황
	private String board_no;			//공지사항-글번호
	private String title;				//공지사항-글제목
	private String article;				//공지사항-글내용
	private Date cre_date;				//공지사항-작성시간
	private String grade_no;			//성적-번호
	private String sub_no;				//성적-과목번호
	private String senester;			//성적-학년학기
	private String score;				//성적-점수
	private String st_name;				//학생-이름
	private String st_birth;			//학생-생년월일
	private String st_gender;			//학생-성별
	private String st_addr;				//학생-주소
	private String st_phone;			//학생-전화번호
	private String st_parent_phone;		//학생-학부모 전화번호
	private String st_grade;			//학생-학년
	private String tc_no;				//학생-담임선생님
	private String st_statuts;			//학생-상태
	private String sub_name;			//교과-이름
	private String tc_name;				//선생-이름
	private String tc_birth;			//선생-생년월일
	private String tc_gender;			//선생-생별
	private String tc_addr;				//선생-주소
	private String tc_phone;			//선생-전화번호
	private Date tc_hired;				//선생-입사일
	private String user_id;				//사용자 아이디
	private String user_pwd;			//사용자 비밀번호
	private String user_grant;			//사용자 권한
	private String tc_status;			//선생-상태

	
	public String getAttendance_no() {
		return attendance_no;
	}

	public void setAttendance_no(String attendance_no) {
		this.attendance_no = attendance_no;
	}

	public String getSt_no() {
		return st_no;
	}

	public void setSt_no(String st_no) {
		this.st_no = st_no;
	}

	public Date getAttendance_date() {
		return attendance_date;
	}

	public void setAttendance_date(Date attendance_date) {
		this.attendance_date = attendance_date;
	}

	public String getAttendance_status() {
		return attendance_status;
	}

	public void setAttendance_status(String attendance_status) {
		this.attendance_status = attendance_status;
	}

	public String getBoard_no() {
		return board_no;
	}

	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArticle() {
		return article;
	}

	public void setArticle(String article) {
		this.article = article;
	}

	public Date getCre_date() {
		return cre_date;
	}

	public void setCre_date(Date cre_date) {
		this.cre_date = cre_date;
	}

	public String getGrade_no() {
		return grade_no;
	}

	public void setGrade_no(String grade_no) {
		this.grade_no = grade_no;
	}

	public String getSub_no() {
		return sub_no;
	}

	public void setSub_no(String sub_no) {
		this.sub_no = sub_no;
	}

	public String getSenester() {
		return senester;
	}

	public void setSenester(String senester) {
		this.senester = senester;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getSt_name() {
		return st_name;
	}

	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}

	public String getSt_birth() {
		return st_birth;
	}

	public void setSt_birth(String st_birth) {
		this.st_birth = st_birth;
	}

	public String getSt_gender() {
		return st_gender;
	}

	public void setSt_gender(String st_gender) {
		this.st_gender = st_gender;
	}

	public String getSt_addr() {
		return st_addr;
	}

	public void setSt_addr(String st_addr) {
		this.st_addr = st_addr;
	}

	public String getSt_phone() {
		return st_phone;
	}

	public void setSt_phone(String st_phone) {
		this.st_phone = st_phone;
	}

	public String getSt_parent_phone() {
		return st_parent_phone;
	}

	public void setSt_parent_phone(String st_parent_phone) {
		this.st_parent_phone = st_parent_phone;
	}

	public String getSt_grade() {
		return st_grade;
	}

	public void setSt_grade(String st_grade) {
		this.st_grade = st_grade;
	}

	public String getTc_no() {
		return tc_no;
	}

	public void setTc_no(String tc_no) {
		this.tc_no = tc_no;
	}

	public String getSt_statuts() {
		return st_statuts;
	}

	public void setSt_statuts(String st_statuts) {
		this.st_statuts = st_statuts;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	public String getTc_name() {
		return tc_name;
	}

	public void setTc_name(String tc_name) {
		this.tc_name = tc_name;
	}

	public String getTc_birth() {
		return tc_birth;
	}

	public void setTc_birth(String tc_birth) {
		this.tc_birth = tc_birth;
	}

	public String getTc_gender() {
		return tc_gender;
	}

	public void setTc_gender(String tc_gender) {
		this.tc_gender = tc_gender;
	}

	public String getTc_addr() {
		return tc_addr;
	}

	public void setTc_addr(String tc_addr) {
		this.tc_addr = tc_addr;
	}

	public String getTc_phone() {
		return tc_phone;
	}

	public void setTc_phone(String tc_phone) {
		this.tc_phone = tc_phone;
	}

	public Date getTc_hired() {
		return tc_hired;
	}

	public void setTc_hired(Date tc_hired) {
		this.tc_hired = tc_hired;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_grant() {
		return user_grant;
	}

	public void setUser_grant(String user_grant) {
		this.user_grant = user_grant;
	}

	public String getTc_status() {
		return tc_status;
	}

	public void setTc_status(String tc_status) {
		this.tc_status = tc_status;
	}
}