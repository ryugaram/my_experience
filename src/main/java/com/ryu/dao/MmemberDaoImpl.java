package com.ryu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ryu.vo.MemberVO;

@Repository
public class MmemberDaoImpl implements MemberDao {

	@Inject
	private SqlSession sql;
	
	private static String namespace= "com.ryu.mappers.member";
	
	@Override
	public List<MemberVO> list() {
		
		return sql.selectList(namespace+".list");
	}

}
