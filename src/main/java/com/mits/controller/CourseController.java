package com.mits.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.mits.model.Course;
import com.mits.service.CourseService;

@Controller
public class CourseController {

    @Autowired
    private CourseService service;

    @GetMapping("/courseList")
    public String courseList(Model model) {

        model.addAttribute("courses",
                service.getAllCourses());

        return "courseList";
    }

    @GetMapping("/addCourse")
    public String addCoursePage() {

        return "addCourse";
    }

    @PostMapping("/saveCourse")
    public String saveCourse(Course course) {

        service.saveCourse(course);

        return "redirect:/courseList";
    }

    @GetMapping("/deleteCourse")
    public String deleteCourse(@RequestParam int id) {

        service.deleteCourse(id);

        return "redirect:/courseList";
    }

}