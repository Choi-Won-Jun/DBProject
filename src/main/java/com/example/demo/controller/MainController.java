package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dto.ChatDto;
import com.example.demo.dto.UserDto;
import com.example.demo.form.ReqForConversationForm;
import com.example.demo.service.MainService;


@RestController
@RequestMapping("/main")
public class MainController {

	@Autowired
	MainService service;
	
	@RequestMapping("")
	public List<UserDto> getUsersForMainPage() {
		return service.getUsersForMainPage();
	}
	
	@RequestMapping("/conversation")
	public List<ChatDto> getChatsBetweenTwoUsers(@RequestBody ReqForConversationForm rfcForm){
		System.out.println("Receiver ID : " + rfcForm.getId());
		return service.getChatsBetweenTwoUsers(rfcForm);
	}
	
}
