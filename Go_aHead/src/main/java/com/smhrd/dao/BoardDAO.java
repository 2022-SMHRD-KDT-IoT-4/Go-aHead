package com.smhrd.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.smhrd.domain.Board;

public class BoardDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "com/smhrd/dao/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//_db_
	
	public Board checkLogin(Board b) {
		SqlSession session=sqlSessionFactory.openSession();
		Board log = session.selectOne("checkLogin", b);
		session.close();
		return log;
		
	}

}
