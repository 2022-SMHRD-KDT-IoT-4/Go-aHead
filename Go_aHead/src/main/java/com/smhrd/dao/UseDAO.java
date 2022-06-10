package com.smhrd.dao;

import org.apache.coyote.http11.upgrade.UpgradeServletOutputStream;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.domain.AccVO;
import com.smhrd.domain.UseVO;

public class UseDAO {
	private SqlSession sqlSession = null;
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int useInsert(UseVO vo) {
		int row = 0;
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			row = sqlSession.insert("com.smhrd.dao.UseDAO.useInsert", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return row;
	}
	
	public AccVO accView(String hel_num) {
		AccVO vo = null;
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			vo = (AccVO)sqlSession.selectOne("com.smhrd.dao.UseDAO.accSelectOne", hel_num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return vo;
	}

	public UseVO useList(String mem_id) {
		UseVO result = new UseVO();			
		
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			result = sqlSession.selectOne("com.smhrd.dao.UseDAO.useList", mem_id);
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}finally {
			sqlSession.close();
		}
		
		return result;
		
	}
}
