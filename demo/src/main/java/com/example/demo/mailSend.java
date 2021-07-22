package com.example.demo;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class mailSend {
	// 임시 비밀번호 전송 메일 
	
	@Autowired
	protected JavaMailSender mailsender;
	
	    
	public boolean sendPwdMail(String userEmail,String newPwd) {
		String content = "<p> 임시 비밀번호는 ["+ newPwd +"] 입니다. </p>" ;
		String subject = "[sit-down] 임시 비밀번호 발송메일 입니다.";
		String from = "tpgml122@gmail.com";
		
		try {
			
			MimeMessage mail = mailsender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
			

			mailHelper.setFrom(from); //보내는사람 
			mailHelper.setTo(userEmail); //받는사람 
			mailHelper.setSubject(subject); //제목 설정 
			mailHelper.setText(content,true); //내용 
			
			mailsender.send(mail);
			return true;
			
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
}
