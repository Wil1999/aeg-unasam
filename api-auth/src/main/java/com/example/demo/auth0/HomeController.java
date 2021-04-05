package com.example.demo.auth0;


import org.springframework.security.authentication.TestingAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.auth0.jwt.JWT;
import com.auth0.jwt.interfaces.DecodedJWT;

@Controller
public class HomeController {
	
	@GetMapping(value="/apiHome/")
	@ResponseBody
	public String home(final Authentication authentication) {
		TestingAuthenticationToken token = (TestingAuthenticationToken) authentication;
		DecodedJWT jwt = JWT.decode(token.getCredentials().toString());
		String email = jwt.getClaims().get("email").asString();
		return "Welcome, "+email+"!";
	}
	
}
