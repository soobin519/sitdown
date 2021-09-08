package com.example.demo.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.http.ResponseEntity;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public final class jsonUtil {
	// entity -> list 형식 변환 유틸
	@SuppressWarnings("unchecked")
	public static List<Map<String, Object>>  jsonToMap(ResponseEntity<String> response, String keyName) throws ParseException{
		
		JSONParser parser = new JSONParser();
		JSONObject jsonObject = (JSONObject) parser.parse(response.getBody().toString());
		JSONArray Array = (JSONArray) jsonObject.get(keyName);
		
        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        
        if( Array != null )
        {
            int jsonSize = Array.size();
            for( int i = 0; i < jsonSize; i++ )
            {
            	JSONObject Object = (JSONObject) Array.get(i);
            	Map<String, Object> map;
				try {
					map = new ObjectMapper().readValue(Object.toJSONString(), Map.class);
					list.add(map);
				} catch (JsonProcessingException e) {
					e.printStackTrace();
				}
            }
        }
        
        return list;
		
	}
}

