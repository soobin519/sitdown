package com.example.demo.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.example.demo.VO.userVO;

@Repository("db")
public interface userDAO {
	public List<userVO> selectUser();
}
