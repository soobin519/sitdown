package com.example.demo.Service;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import com.example.demo.subwayAPI;
import com.example.demo.DAO.subwayDAO;
import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.lineVO;
import com.example.demo.VO.stationVO;

@Service
public class subwayImplService implements subwayService {

	@Inject
	private subwayDAO sdao;
	
	@Override
	public List<lineVO> selectLine(){
		return sdao.selectLine();
	}
	
	@Override 
	public List<stationVO> selectStation(HashMap map){
		return sdao.selectStation(map);
	}

	@Override
	public int insertGetoffInfo(getoff_infoVO getoff) throws ParseException {
		
		String station = getoff.getGetoffNm(); //하차역
		String trainNo = getoff.getTrainNo(); //열차명
		List<Map<String, Object>> train = subwayAPI.getArrivalTimeAPI(station); // 해당하는 하차역의 도착정보 API 가져오기
		
		for(Map<String,Object> map : train) {
			if(map.get("btrainNo").equals(trainNo)) {
				// 해당 열차번호의 정보와 일치할 경우 
				String barvlDt = (String) map.get("barvlDt"); // 시간 (초)
				String recptnDt = (String) map.get("recptnDt"); // 날짜 
				
				System.out.println(barvlDt);
				System.out.println(recptnDt);
				
				int sec = Integer.parseInt(barvlDt); //시간 (초) 형변환 
				SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");

				try {
					Date to = fm.parse(recptnDt);
					
					Calendar cal = Calendar.getInstance();
					
					cal.setTime(to);
					cal.add(Calendar.SECOND,sec); // 시간 초 더해주기 
					
					Date getoffTime = cal.getTime();
					System.out.println("계산 결과 : "+getoffTime);
					
					getoff.setGetoffTime(getoffTime); // 시간 계산 결과 셋팅
					
					
				} catch (java.text.ParseException e) {
					e.printStackTrace();
				}
			}
			
		}
		
		return sdao.insertGetoffInfo(getoff);
	}

	@Override
	public getoff_infoVO selectMySeatInfo(HashMap map) {
		return sdao.selectMySeatInfo(map);
	}

	@Override
	public List<getoff_infoVO> selectGetoffInfo(HashMap map) {
		return sdao.selectGetoffInfo(map);
	}

	@Override
	public int checkDuplicatedInfo(int userId) {
		return sdao.checkDuplicatedInfo(userId);
	}
	
	@Override
	public int deletePassingTrain() {
		return sdao.deletePassingTrain();
	}
	
	
}
