package com.example.demo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.tomcat.util.json.JSONParser;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.example.demo.Controller.jsonUtil;
import com.example.demo.VO.trainVO;



@RestController
public class subwayAPI {
	
	private final static String url = "http://swopenapi.seoul.go.kr/api/subway/5048634d437470673130386548486867/json/realtimePosition/1/20/";
	
	// API 가져오기 위한 메소드
	public static List<Map<String, Object>> getSubwayAPI(String station) throws ParseException {
		
		StringBuilder sb = new StringBuilder();
		sb.append((url)).append(station);
		String URL = sb.toString();
		
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate.exchange(URL,HttpMethod.GET,null,String.class);		
		
		List<Map<String, Object>> train = jsonUtil.jsonToMap(response); // 리스트로 반환하기 위한 형변환
//		for(Map<String,Object> map : train) {
//			System.out.println(map.toString());
//		}
		
		return train;
		
	}

}
