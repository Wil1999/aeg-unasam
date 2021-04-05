package com.example.demo.auth0;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import com.auth0.AuthenticationController;
import com.auth0.jwk.JwkProvider;
import com.auth0.jwk.JwkProviderBuilder;
import com.auth0.spring.security.api.JwtWebSecurityConfigurer;

@Configuration
@EnableWebSecurity
public class AppConfig extends WebSecurityConfigurerAdapter {

	@Value(value = "${auth0.apiAudience}")
	private String apiAudience;
	
	@Value(value = "${auth0.issuer}")
	private String issuer;
	
	@Value(value="${com.auth0.domain}")
	private String domain;
	
	@Value(value="${com.auth0.clientId}")
	private String clientId;
	
	@Value(value="${com.auth0.clientSecret}")
	private String clientSecret;
	@Bean
	CorsConfigurationSource corsConfigurationSource() {
		CorsConfiguration configuration = new CorsConfiguration();
		configuration.setAllowedOrigins(Arrays.asList("http://localhost:3000"));
		configuration.setAllowedMethods(Arrays.asList("GET", "POST"));
		configuration.setAllowCredentials(true);
		configuration.addAllowedHeader("Authorization");
		UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
		source.registerCorsConfiguration("/**", configuration);
		return source;
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.cors();
		JwtWebSecurityConfigurer.forRS256(apiAudience, issuer).configure(http)
		.authorizeRequests()
		.antMatchers("/api/callback","/api/login","/api/apiHome","/").permitAll().anyRequest().authenticated()
		.and()
		.formLogin()
		.loginPage("/api/login")
		.permitAll();
		/*.antMatchers(HttpMethod.GET, "/api/public")
		.permitAll()
		.antMatchers(HttpMethod.GET, "/api/private")
		.authenticated()
		.antMatchers(HttpMethod.GET, "/api/private-scoped")
		.hasAuthority("read:messages"); */
		
	}
	
	
	@Bean
	public AuthenticationController authenticationController() throws UnsupportedEncodingException{
		JwkProvider jwkProvide = new JwkProviderBuilder(domain).build();
		return AuthenticationController.newBuilder(domain, clientId, clientSecret)
				.withJwkProvider(jwkProvide)
				.build();
	}
	
	public String getContextPath (HttpServletRequest request) {
		String path = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/apiHome/";
		return path;
	}
}
