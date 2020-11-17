package com.jee.helloworld.repository;

import com.jee.helloworld.model.Student;
import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {


    List<Student> findByLastName(String lastName);
}
