package com.flores;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class MsAsociadoApplication {

	public static void main(String[] args) {
		SpringApplication.run(MsAsociadoApplication.class, args);
	}

}
