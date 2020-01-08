package com.mindtree.bankmanagementsystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.bankmanagementsystem.entity.Customer;
import com.mindtree.bankmanagementsystem.entity.DebitCard;
import com.mindtree.bankmanagementsystem.exception.service.BankManagementSystemServiceException;
import com.mindtree.bankmanagementsystem.service.BankManagementSystemService;

@Controller
public class BankManagementSystemController {
	@Autowired
	BankManagementSystemService bankManagementSystemService;

	@RequestMapping("/")
	public String index() {
		return "index";

	}

	@RequestMapping("/customer")
	public String customer(Customer customer) {
		bankManagementSystemService.addCustomer(customer);
		return "customer";

	}

//	@RequestMapping("/debitcard2")
//	public String debitcard() {
//		return "debitcard2";
//
//	}
	@RequestMapping("/debitcard2")
	public ModelAndView adddebitcard(Customer customer, Model model) throws BankManagementSystemServiceException {
		model.addAttribute("customers", bankManagementSystemService.getCustomer());
		ModelAndView modelandview = new ModelAndView();
		modelandview.setViewName("debitcard2");
		return modelandview;

	}

	@RequestMapping("/adddebitcarddb")
	public String adddebitcard(@RequestParam String customerName, DebitCard debitCard) {
		bankManagementSystemService.addDebitCard(customerName, debitCard);
		return "debitcard2";

	}

	@GetMapping("/view")
	public String viewAll(Customer customer, Model model) {
		model.addAttribute("customers", bankManagementSystemService.getAl());
		return "view";

	}

}
