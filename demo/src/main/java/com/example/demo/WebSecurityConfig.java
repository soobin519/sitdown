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
        http.csrf().disable(); // 인증 비활성화 ? 
//        http
//        	.authorizeRequests()
//        		.antMatchers("/","/resources/**").permitAll()
//        		.antMatchers("/user/**").permitAll()
//        		.anyRequest().authenticated()
//        		.and()
//        	.formLogin()
//        		.loginPage("/user/login")
//        		.loginProcessingUrl("/checkuser")
//        		.usernameParameter("userId")
//        		.passwordParameter("password")
//        		.defaultSuccessUrl("/login",true);
        
        	
    }
}
