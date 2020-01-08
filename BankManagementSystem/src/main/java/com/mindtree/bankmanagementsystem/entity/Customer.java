package com.mindtree.bankmanagementsystem.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int customerId;
	private String customerName;
	private int customerAge;
	@OneToMany
	private List<DebitCard> debitcards;

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer(int customerId, String customerName, int customerAge, List<DebitCard> debitcards) {
		super();
		this.customerId = customerId;
		this.customerName = customerName;
		this.customerAge = customerAge;
		this.debitcards = debitcards;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public int getCustomerAge() {
		return customerAge;
	}

	public void setCustomerAge(int customerAge) {
		this.customerAge = customerAge;
	}

	public List<DebitCard> getDebitcards() {
		return debitcards;
	}

	public void setDebitcards(List<DebitCard> debitcards) {
		this.debitcards = debitcards;
	}

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", customerName=" + customerName + ", customerAge=" + customerAge
				+ ", debitcards=" + debitcards + "]";
	}

}
