package com.mits.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mits.model.Student;

public interface student_rep extends JpaRepository<Student, Integer> {

    List<Student> findByNameContainingIgnoreCaseOrDepartmentContainingIgnoreCaseOrCourseContainingIgnoreCase(
            String name,
            String department,
            String course);
 // Repository
    long countByGender(String gender);

}