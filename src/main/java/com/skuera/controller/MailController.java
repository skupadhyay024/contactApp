package com.skuera.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skuera.mail.SendMail;
import com.skuera.model.EmailModel;

/**
 * @author skuera
 *
 */
@Controller
public class MailController {
	
	
	@Autowired
	@Qualifier("mail")
	private SendMail mail;
	
	
	



	public void setMail(SendMail mail) {
		this.mail = mail;
	}

	@RequestMapping(value="/mailform.view",method=RequestMethod.GET)
	private String getform(HttpServletRequest request,HttpServletResponse response,ModelMap model){
		ArrayList<String> issue=new ArrayList<>();
		EmailModel contactForm=new EmailModel();
		issue.add("Order");
		issue.add("Shipping");
		model.addAttribute("issueList",issue);
		model.addAttribute("cform",contactForm);
		return "ContactForm";
	}
	
	@RequestMapping(value="/mailform.view",method=RequestMethod.POST)
	private String sendform(@ModelAttribute("cform") EmailModel email) {
		String from=email.getFrom();
		String to=email.getTo();
		String subject=email.getSubject();
		String issue=email.getIssue();
		subject=issue+"-"+subject;
		String msg=email.getMessage();
		
	mail.sendMail(from, to, subject, msg);
		return "Success";
	}

}
