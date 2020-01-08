package com.mindtree.bankmanagementsystem.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mindtree.bankmanagementsystem.entity.Customer;
import com.mindtree.bankmanagementsystem.entity.DebitCard;
import com.mindtree.bankmanagementsystem.exception.service.BankManagementSystemServiceException;

@Service
public interface BankManagementSystemService {
	public Customer addCustomer(Customer customer);

	public List<Customer> getCustomer() throws BankManagementSystemServiceException;
	public DebitCard addDebitCard(String custormerName, DebitCard debitCard);

	public List<Customer> getAl();
}
