package com.example.demo.service;

import com.example.demo.repo.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.demo.model.Task;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
public class TaskService {

    @Autowired
    private TaskRepository taskRepository;

    public List<Task> getAllTasks() {
        return taskRepository.findAll();
    }

    public Task getTaskById(long id) {
        Optional<Task> task = taskRepository.findById(id);
        if(task.isPresent()) {
            return task.get();
        } else {
            throw new RuntimeException("Task not found for id: " + id);
        }
    }

    public Task createTask(Task task) {
        return taskRepository.save(task);
    }

    public Task updateTask(Long id, Task updatedTask) {
        Optional<Task> task = taskRepository.findById(id);
        if(task.isPresent()) {
            updatedTask.setId(id);
            return taskRepository.save(updatedTask);
        } else {
            throw new RuntimeException("Task not found for id: " + id);
        }
    }

    public Task deleteTask(Long id) {
        taskRepository.deleteById(id);
        return null;
    }

}
