package com.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.domain.moduleVO;

public class moduleDAO {

	private SqlSession sqlSession = null;
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int updateGPS(String gps_lat,String gps_long) {
		moduleVO vo = new moduleVO(gps_lat, gps_long);
		int row =0;
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			row = sqlSession.update("updateGPS", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return row;
		
	}
}
