package com.example.gitcicd;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class GitcicdApplication {


	@GetMapping("/welcome")
	public String welcome(){
		return "Welcome to Maxdev universe";
	}

	public static void main(String[] args) {
		SpringApplication.run(GitcicdApplication.class, args);
	}



}
