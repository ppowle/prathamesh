package com;

import org.springframework.binding.message.MessageContext;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

@Component
public class handler {

	public Login initFlow() {
		return new Login();
	}

	public String validateDetails(UserDetails userDetails, MessageContext messageContext) {
		String status = "success";

		return status;
	}
}