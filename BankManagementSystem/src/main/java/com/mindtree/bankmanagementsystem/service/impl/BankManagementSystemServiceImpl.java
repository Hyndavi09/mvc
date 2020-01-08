package com.mindtree.bankmanagementsystem.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.bankmanagementsystem.entity.Customer;
import com.mindtree.bankmanagementsystem.entity.DebitCard;
import com.mindtree.bankmanagementsystem.exception.service.BankManagementSystemServiceException;
import com.mindtree.bankmanagementsystem.exception.service.NoCustomersPresent;
import com.mindtree.bankmanagementsystem.repository.CustomerRepository;
import com.mindtree.bankmanagementsystem.repository.DebitCardRepository;
import com.mindtree.bankmanagementsystem.service.BankManagementSystemService;

@Service
public class BankManagementSystemServiceImpl implements BankManagementSystemService {
	@Autowired
	CustomerRepository customerRepository;
	@Autowired
	DebitCardRepository debitCardRepository;

	@Override
	public Customer addCustomer(Customer customer) {
		return customerRepository.save(customer);
	}

	@Override
	public DebitCard addDebitCard(String custormerName, DebitCard debitCard) {
		Customer customer = customerRepository.findByCustomerName(custormerName);
		List<DebitCard> debitcards = new ArrayList<DebitCard>();
		debitcards.add(debitCard);
		customer.setDebitcards(debitcards);
		// customerRepository.saveAndFlush(customer);
		return debitCardRepository.save(debitCard);

	}

	@Override
	public List<Customer> getCustomer() throws BankManagementSystemServiceException {

		if (customerRepository.findAll().isEmpty()) {
			throw new NoCustomersPresent("No Customers");
		}

		return customerRepository.findAll();
	}

	@Override
	public List<Customer> getAl() {

		return customerRepository.findAll();
	}

}
