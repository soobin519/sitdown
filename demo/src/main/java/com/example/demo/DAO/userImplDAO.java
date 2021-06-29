package com.example.demo.DAO;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;

@Repository
public abstract class userImplDAO implements userDAO {
	  @Autowired
	    private SqlSession sqlSession;
	    
	    private static final String Namespace = " com.example.demo.MapperUser";

}
