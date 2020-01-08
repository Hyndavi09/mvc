package com.mindtree.bankmanagementsystem.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class DebitCard {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int debitCardId;
	private long debitCardNumber;
	private double amount;
	private Date expiryDate;

	public DebitCard() {
		super();
	}

	public DebitCard(int debitCardId, long debitCardNumber, double amount, Date expiryDate) {
		super();
		this.debitCardId = debitCardId;
		this.debitCardNumber = debitCardNumber;
		this.amount = amount;
		this.expiryDate = expiryDate;
	}

	public int getDebitCardId() {
		return debitCardId;
	}

	public void setDebitCardId(int debitCardId) {
		this.debitCardId = debitCardId;
	}

	public long getDebitCardNumber() {
		return debitCardNumber;
	}

	public void setDebitCardNumber(long debitCardNumber) {
		this.debitCardNumber = debitCardNumber;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public Date getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}




}
