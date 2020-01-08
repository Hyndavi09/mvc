package com.mindtree.passportgenerator.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.mindtree.passportgenerator.entity.User;
import com.mindtree.passportgenerator.exception.PassportGeneratorServiceException;

@Service
public interface PassportGeneratorService 
{
	public User addUser(User user);
	public Optional<User> displayUser(String passportNumber) throws PassportGeneratorServiceException;

}
