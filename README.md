# 📝 Task Manager Application

A simple Task Manager built with **Spring Boot**, **JPA**, and **H2 In-Memory Database**. This application provides a RESTful API to manage tasks — create, read, update, and delete operations.

---

## 🚀 Features

- Create new tasks with title and description
- View all tasks or individual task details
- Update task information
- Delete tasks
- Uses in-memory H2 database (auto-reset on restart)
- Simple and clean REST API with JSON

---

## 🛠️ Tech Stack

- **Java**
- **Spring Boot**
- **Spring Data JPA**
- **H2 Database**
- **Maven**

---

## 🗂️ Project Structure

src
├── main
│ ├── java
│ │ └── com.example.demo
│ │ ├── controller # REST Controllers
│ │ ├── model # Entity Classes
│ │ ├── repository # JPA Repositories
│ │ └── service # Services
│ │ └── TaskManagerApplication.java
│ └── resources
│ │ └── application.properties
│ └── webapp #jsp files

## Run the application 
`mvn spring-boot:run
`


