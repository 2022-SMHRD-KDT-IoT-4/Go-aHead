package com.smhrd.model;




import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.dao.SqlSessionManager;
import com.smhrd.model.Member;

public class DAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession sqlSession = null;
	
	public int Join(Member vo) {
		int row = 0;
		try {
		sqlSession = sqlSessionFactory.openSession(true);
		row = sqlSession.insert("com.smhrd.model.DAO.Join", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return row;
	}

	public Member login(Member vo) {
		Member result = null;
		try {

			sqlSession = sqlSessionFactory.openSession(true);
			result = sqlSession.selectOne("com.smhrd.model.DAO.login", vo);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
}
