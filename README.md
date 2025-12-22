# cpp-finalproject-ERS
Final C++ project for the System Programming course, instructed by Osman Selvi.
Project Objective :
The goal of this project is to develop a distributed Student Information System using Ubuntu, Git, GitHub, and Docker. The system manages student records through a C++ application connected to a PostgreSQL database.

System Components :
Application Container: A custom C++ application for saving and managing student records.
Database Container: A PostgreSQL database for persistent data storage.
Networking: Private network communication between containers.

Key Features :
Save student records (ID, Name, Surname, Email).
List and display student information.
Update and delete student entries.
Stable database transaction management via libpqxx.

Team Roles :
Erfan Karimi (Project Manager): GitHub management, reporting, and documentation.
Rasa Darabi Purshiraz (DevOps): Docker infrastructure, CI/CD, and image management.
Sevin Tayfehaliverdi (C++ Developer): Application logic, database connection, and testing.

Docker Hub Repositories (Mandatory) :
PostgreSQL Image: [RasaDarabi-stu]/sis-project-postgres:latest.
Application Image: [RasaDarabi-stu]/sis-project-app:latest.

Technologies Used :
Language: Modern C++ (C++11 or higher).
Platform: Ubuntu Linux.
Version Control: Git Flow strategy via GitHub.
CI/CD: GitHub Actions for automated testing.

## System Architecture
This project consists of two main Docker containers:
1. **Database:** PostgreSQL (Official Image)
2. **Application:** Custom C++ Application
