package com.ryu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryu.dao.MemberDao;
import com.ryu.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;

	@Override
	public List<MemberVO> list() {
		
		return dao.list();
	}

	@Override
	public void write(MemberVO vo) {
		
		dao.write(vo);
	}

	@Override
	public MemberVO view(int bno) {
		
		return dao.view(bno);
	}

}
