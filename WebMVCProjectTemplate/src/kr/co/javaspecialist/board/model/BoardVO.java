package kr.co.javaspecialist.board.model;

import java.sql.Date;

public class BoardVO {
	private int bbsno;
	private String name;
	private String password;
	private String email;
	private String subject;
	private String content;
	private Date writedate;
	private int masterid;
	private int readcount;
	private int replynumber;
	private int replystep;

	private int seq; //게시글 조회시 목록에 보여지는 글 번호

	public int getBbsno() {
		return bbsno;
	}

	public void setBbsno(int bbsno) {
		this.bbsno = bbsno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}

	public int getMasterid() {
		return masterid;
	}

	public void setMasterid(int masterid) {
		this.masterid = masterid;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public int getReplynumber() {
		return replynumber;
	}

	public void setReplynumber(int replynumber) {
		this.replynumber = replynumber;
	}

	public int getReplystep() {
		return replystep;
	}

	public void setReplystep(int replystep) {
		this.replystep = replystep;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	//기본생성자
	
	//set/get 메서드 추가
	
}