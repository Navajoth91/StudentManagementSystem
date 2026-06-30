package com.mits.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mits.model.Student;
import com.mits.repository.student_rep;

@Service
public class Studentservice {

    @Autowired
    private student_rep repo;

    // Save Student
    public Student saveStudent(Student student) {
        return repo.save(student);
    }

    // Get All Students
    public List<Student> getAllStudents() {
        return repo.findAll();
    }

    // Get Student By ID
    public Student getStudentById(int id) {
        Optional<Student> optional = repo.findById(id);
        return optional.orElse(null);
    }

    // Update Student
    public Student updateStudent(Student student) {
        return repo.save(student);
    }

    // Delete Student
    public void deleteStudent(int id) {
        repo.deleteById(id);
    }

    // Search By Name
    public List<Student> searchStudent(String keyword) {

        if (keyword == null || keyword.trim().isEmpty()) {
            return repo.findAll();
        }

        // Search by ID
        try {
            int id = Integer.parseInt(keyword);
            Student student = repo.findById(id).orElse(null);

            if (student != null) {
                return List.of(student);
            }
        } catch (NumberFormatException e) {
            // Not an ID, continue searching
        }

        // Search by Name, Department, or Course
        return repo.findByNameContainingIgnoreCaseOrDepartmentContainingIgnoreCaseOrCourseContainingIgnoreCase(
                keyword, keyword, keyword);
    }

    // Total Students
    public long totalStudents() {
        return repo.count();
    }
 // Service
    public long totalMale() {
        return repo.countByGender("Male");
    }

    public long totalFemale() {
        return repo.countByGender("Female");
    }
}