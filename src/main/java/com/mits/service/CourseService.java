package com.mits.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mits.model.Course;
import com.mits.repository.CourseRepository;

@Service
public class CourseService {

    @Autowired
    private CourseRepository repo;

    // Save Course
    public Course saveCourse(Course course) {
        return repo.save(course);
    }

    // View All Courses
    public List<Course> getAllCourses() {
        return repo.findAll();
    }

    // Get Course By ID
    public Course getCourseById(int id) {
        Optional<Course> optional = repo.findById(id);
        return optional.orElse(null);
    }

    // Update Course
    public Course updateCourse(Course course) {
        return repo.save(course);
    }

    // Delete Course
    public void deleteCourse(int id) {
        repo.deleteById(id);
    }

    // Total Courses
    public long totalCourses() {
        return repo.count();
    }
}