package com.mindtree.passportgenerator.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.passportgenerator.entity.User;

@Repository
public interface PassportGeneratorRepository extends JpaRepository<User, Integer>{

	Optional<User> findByPassportNumber(String passportNumber);

}
