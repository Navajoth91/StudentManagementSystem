package com.mits.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.mits.model.Student;
import com.mits.service.Studentservice;

@Controller
public class studentcontroller {

    @Autowired
    private Studentservice service;

    // Home Page
    @GetMapping("/")
    public String home() {
        return "dashboard";
    }

    // Dashboard
    @GetMapping("/dashboard")
    public String dashboard(Model model) {

        model.addAttribute("totalStudents", service.totalStudents());

        model.addAttribute("students", service.getAllStudents());

        return "dashboard";
    }

    // Registration Page
    @GetMapping("/register")
    public String registerPage() {
        return "register";
    }

    // Save Student
    @PostMapping("/saveStudent")
    public String saveStudent(Student student) {

        service.saveStudent(student);

        return "success";
    }

    // View Students
    @GetMapping("/view")
    public String viewStudents(Model model) {

        List<Student> students = service.getAllStudents();

        model.addAttribute("students", students);

        return "view";
    }

    // Display Single Student
    @GetMapping("/display")
    public String displayStudent(@RequestParam int id, Model model) {

        Student student = service.getStudentById(id);

        model.addAttribute("student", student);

        return "Display";
    }

    // Edit Student
    @GetMapping("/edit")
    public String editStudent(@RequestParam int id, Model model) {

        Student student = service.getStudentById(id);

        model.addAttribute("student", student);

        return "edit";
    }

    // Update Student
    @PostMapping("/updateStudent")
    public String updateStudent(Student student) {

        service.updateStudent(student);

        return "redirect:/view";
    }

    // Delete Student
    @GetMapping("/delete")
    public String deleteStudent(@RequestParam int id) {

        service.deleteStudent(id);

        return "redirect:/view";
    }

    // Search Page
    @GetMapping("/search")
    public String searchPage() {

        return "search";
    }

    // Search Student
    @GetMapping("/searchStudent")
    public String searchStudent(@RequestParam String keyword,
                                Model model) {

        model.addAttribute("students",
                service.searchStudent(keyword));

        return "search";
    }

    // All Students
    @GetMapping("/all")
    public String allStudents(Model model) {

        model.addAttribute("students",
                service.getAllStudents());

        return "all";
    }

}