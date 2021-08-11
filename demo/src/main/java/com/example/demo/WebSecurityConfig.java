package com.example.demo;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable(); // csrf 비활성화
        http
        	.authorizeRequests()
        		.antMatchers("/","/resources/**").permitAll()
        		.antMatchers("/user/**").permitAll()
        		.anyRequest().authenticated() // 인증된 경우만 이용 가능
        		.and()
        	.formLogin()
        		.loginPage("/user/login")
        		.loginProcessingUrl("/checkuser") //로그인이 post 보낼 때의 경로 
        		.usernameParameter("userId")
        		.passwordParameter("password");
        	
    }
}
