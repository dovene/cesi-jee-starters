package com.jee.helloworld.controller;


import com.jee.helloworld.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
@RequestMapping("/hello")
public class HelloController {
    ArrayList<Student> students = new ArrayList<>();

    @GetMapping
    public String greet(HttpSession session, Model model) {
       model.addAttribute("student", session.getAttribute("student"));

       //set students list in model dict
        model.addAttribute("students", students);

       return "hello";
    }

    @GetMapping
    @RequestMapping("/details")
    public String greetInFull(Model model,  @RequestParam("fullName") String fullName, @RequestParam("city") String city) {
        Student student = new Student();
        student.setFullName(fullName);
        student.setCity(city);
        //model.addAttribute("fullName", fullName);
        //model.addAttribute("city", city);
        model.addAttribute("student", student);
        return "hello";
    }

    @GetMapping("/login")
    public String login(Model model) {
        //Next line is mandatory for the form to work
        model.addAttribute("student", new Student());
        return "login";
    }

    @PostMapping(path = "/login")
    public String login(HttpSession session, @ModelAttribute Student student) {
        session.setAttribute("student", student);

        //Add student in a list
        students.add(student);

        return "redirect:/hello";
    }
}
