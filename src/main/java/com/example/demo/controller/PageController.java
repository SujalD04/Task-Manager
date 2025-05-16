package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.example.demo.service.TaskService;
import com.example.demo.model.Task;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PageController {

    @Autowired
    private TaskService taskService;

    @GetMapping("/")
    public String listTasks(Model model) {
        model.addAttribute("tasks", taskService.getAllTasks());
        return "list";
    }

    @GetMapping("/create")
    public String createForm() {
        return "create";
    }

    @PostMapping("/save")
    public String saveTask(Task task) {
        taskService.createTask(task);
        return "redirect:/";
    }

    @GetMapping ("/update")
    public String showUpdateForm(@RequestParam Long id, Model model) {
        model.addAttribute("task", taskService.getTaskById(id));
        return "update";
    }

    @PostMapping("/updateTask")
    public String updateTask(Task task) {
        taskService.updateTask(task.getId(), task);
        return "redirect:/";
    }


    @GetMapping("/delete")
    public String deleteTask(@RequestParam Long id) {
        taskService.deleteTask(id);
        return "redirect:/";
    }
}
