package com.ryu.service;

import java.util.List;

import com.ryu.vo.MemberVO;

public interface MemberService {

	List<MemberVO> list();

	void write(MemberVO vo);

	MemberVO view(int bno);

	void modify(MemberVO vo);

	void delete(int bno);

	public int count();

}
