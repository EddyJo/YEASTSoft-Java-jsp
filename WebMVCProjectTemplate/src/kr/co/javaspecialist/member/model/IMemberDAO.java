package kr.co.javaspecialist.member.model;

import java.util.ArrayList;

public interface IMemberDAO {
	void insert(MemberVO member);
	MemberVO selectMember(String userid);
	ArrayList<MemberVO> selectAllMembers();
	void update(MemberVO member);
	int delete(MemberVO member);
}
