package com.example.demo.auth0;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.TestingAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.auth0.AuthenticationController;
import com.auth0.IdentityVerificationException;
import com.auth0.Tokens;
import com.auth0.jwt.JWT;
import com.auth0.jwt.interfaces.DecodedJWT;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

@Controller
@Component
public class APIController {
	@Autowired
	private AppConfig config;
	
	@Autowired
	private AuthenticationController authenticationController;
	
	@GetMapping(value="/api/login")
	protected void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String redirectUri = "http://localhost:8790/apipublica/api/callback";
		String authorizeUrl = authenticationController.buildAuthorizeUrl(request,response, redirectUri)
				.withScope("OpenId Email")
				.build();
		response.sendRedirect(authorizeUrl);
	}
	
	@GetMapping(value="/api/callback")
	public void callback(HttpServletRequest request, HttpServletResponse response) throws IdentityVerificationException, IOException {
		Tokens tokens = authenticationController.handle(request,response);
		DecodedJWT jwt = JWT.decode(tokens.getIdToken());
		TestingAuthenticationToken authToken2 = new TestingAuthenticationToken(jwt.getSubject(), jwt.getToken());
		authToken2.setAuthenticated(true);
		SecurityContextHolder.getContext().setAuthentication(authToken2);
		response.sendRedirect(config.getContextPath(request)+"/");
	}
	
 @RequestMapping(value = "/api/public", method = RequestMethod.GET, produces = "application/json")
 @ResponseBody
 public String publicEndpoint() {
     return new JSONObject()
             .put("message", "Hello from a public endpoint! You don\'t need to be authenticated to see this.")
             .toString();
 }

 @RequestMapping(value = "/api/private", method = RequestMethod.GET, produces = "application/json")
 @ResponseBody
 public String privateEndpoint() {
     return new JSONObject()
             .put("message", "Hello from a private endpoint! You need to be authenticated to see this.")
             .toString();
 }

 @RequestMapping(value = "/api/private-scoped", method = RequestMethod.GET, produces = "application/json")
 @ResponseBody
 public String privateScopedEndpoint() {
     return new JSONObject()
             .put("message", "Hello from a private endpoint! You need to be authenticated and have a scope of read:messages to see this.")
             .toString();
 }
}