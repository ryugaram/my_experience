package com.ryu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ryu.vo.MemberVO;
import com.ryu.vo.PagingVO;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Inject
	private SqlSession sql;
	
	private static String namespace= "com.ryu.mappers.member";
	
	

	@Override
	public void write(MemberVO vo) {
		
		sql.insert(namespace+".write",vo);
	}

	@Override
	public MemberVO view(int bno) {
		
		return sql.selectOne(namespace+".view",bno);
	}

	@Override
	public void modify(MemberVO vo) {
		
		sql.update(namespace+".modify",vo);
		
	}

	@Override
	public void delete(int bno) {
		
		sql.delete(namespace+".delete",bno);
	}

	@Override
	public int count() {
		
		return sql.selectOne(namespace+".count");
		
	}

	@Override
	public List<MemberVO> list(PagingVO vo) {
		
		return sql.selectList(namespace+".list",vo);
	}



}
