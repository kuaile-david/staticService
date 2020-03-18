package com.simple.app;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringCloudApplication
@EnableFeignClients
public class StaticServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(StaticServiceApplication.class, args);
	}

}
