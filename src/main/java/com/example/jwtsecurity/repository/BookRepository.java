package com.example.jwtsecurity.repository;

import com.example.jwtsecurity.domain.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Integer> {

}
