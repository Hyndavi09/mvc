package com.mindtree.passportgenerator.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.passportgenerator.entity.User;
import com.mindtree.passportgenerator.exception.PassportGeneratorServiceException;
import com.mindtree.passportgenerator.exception.PassportNumberNotFound;
import com.mindtree.passportgenerator.repository.PassportGeneratorRepository;
import com.mindtree.passportgenerator.service.PassportGeneratorService;

@Service
public class PassportGeneratorServiceImpl implements PassportGeneratorService{

	@Autowired
	PassportGeneratorRepository passportGeneratorRepository;
	
	@Override
	public User addUser(User user) {
		String passportNumber = "";
		for(int i=0;i<1;i++)
		{
			passportNumber=passportNumber+user.getFirstName().charAt(i);
		}
		for(int i=0;i<1;i++)
		{
			passportNumber=passportNumber+user.getLastName().charAt(i);
		}
		passportNumber=passportNumber+user.getAge().charAt(0);
		for(int i=0;i<2;i++)
		{
			passportNumber=passportNumber+user.getCountry().charAt(i);
		}
		user.setPassportNumber(passportNumber);
		passportGeneratorRepository.save(user);
		return user;
	}

	@Override
	public Optional<User> displayUser(String passportNumber) throws PassportGeneratorServiceException {
		Optional<User> user=passportGeneratorRepository.findByPassportNumber(passportNumber);
		user.orElseThrow(()->new PassportNumberNotFound("Invalid Passport Number"));
		return user;
	}
	


}
