package com.smhrd.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.domain.Member;



public class MemberDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession sqlSession = null;
	
	

	public ArrayList<Member> getAllList() {
		ArrayList<Member> list = new ArrayList<Member>();
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			list = (ArrayList) sqlSession.selectList("com.smhrd.dao.MemberDAO.getAllList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	

}
