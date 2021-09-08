package com.example.demo.Controller;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class ScheduledTasks {

	@Scheduled(fixedDelay = 1000) 
	public void scheduleTest() {
		// 
		
	}
}
