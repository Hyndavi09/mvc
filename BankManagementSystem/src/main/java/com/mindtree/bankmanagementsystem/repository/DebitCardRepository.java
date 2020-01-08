package com.mindtree.bankmanagementsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.bankmanagementsystem.entity.DebitCard;

@Repository
public interface DebitCardRepository extends JpaRepository<DebitCard, Integer> {

}
