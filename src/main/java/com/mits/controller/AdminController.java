package com.mits.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mits.service.CourseService;
import com.mits.service.Studentservice;

@Controller
public class AdminController {

    @Autowired
    private Studentservice studentService;

    @Autowired
    private CourseService courseService;

    @GetMapping("/reports")
    public String reports(Model model) {

        model.addAttribute("totalStudents",
                studentService.totalStudents());

        model.addAttribute("totalCourses",
                courseService.totalCourses());

        model.addAttribute("maleStudents", 0);

        model.addAttribute("femaleStudents", 0);

        return "reports";
    }

}