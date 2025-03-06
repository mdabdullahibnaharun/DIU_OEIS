# DIU_OEIS

![image](https://github.com/user-attachments/assets/491f9b89-365f-4abe-afdc-970602e33518)

---
This repository contains the **DIUOEIS** (Daffodil International University Online Event and Information System) project. The platform is designed to enhance student engagement at Daffodil International University by offering a centralized platform to manage clubs, events, news, notices, and more.

## Table of Contents
- [4. Logical Data Model](#4-logical-data-model)
- [5. Design Requirements](#5-design-requirements)
- [6. Implementation and Testing](#6-implementation-and-testing)
- [7. Conclusion and Future Scope](#7-conclusion-and-future-scope)

---

## 4. Logical Data Model

The **Logical Data Model (LDM)**, or **Entity Relationship Diagram (ERD)**, represents data items, their properties, and relationships. For the **DIUOEIS** project, the LDM serves as the foundation for the **MySQL database**, illustrating entities like:

- Users
- Clubs
- Events
- News
- Notices

![image](https://github.com/user-attachments/assets/95f299bf-d8ae-4f82-a57a-d34c04f927bb)


This model captures relationships such as one-to-one, one-to-many, and many-to-many, enabling functionalities like:

- Club executives managing multiple clubs.
- Users participating in various events.

---

## 5. Design Requirements

### Use Case

![image](https://github.com/user-attachments/assets/95aceb9b-ec19-42e6-b27b-c6ebc0f6deda)


### Hardware Requirements

| **Component** | **Minimum Requirement** |
|---------------|-------------------------|
| Processor     | Intel Core i3           |
| RAM           | 4GB or more             |
| Hard Disk     | 250GB or more           |

### Software Requirements

| **Component**     | **Required**                |
|-------------------|-----------------------------|
| Operating System  | Windows or Linux            |
| Database          | MySQL                       |
| IDE               | Visual Studio Code          |
| Server            | Gunicorn                    |
| Browser           | Chrome or any modern browser|

### Tools and Technologies

| **Required Name**  | **Description**                               |
|--------------------|-----------------------------------------------|
| Language           | Python, HTML, CSS, JavaScript, Bootstrap 4    |
| Library            | Ajax                                          |
| Framework          | Django                                        |
| Database           | MySQL                                         |

---

## 6. Implementation and Testing

### 6.1 Database Implementation

The **DIUOEIS** project uses **XAMPP** as the database management system with **MySQL** to manage user data efficiently. MySQL was chosen due to its speed, reliability, and user-friendly nature.

### 6.2 Front-end Design

The **front-end** is user-friendly, built with **HTML**, **CSS**, **JavaScript**, and **Bootstrap 4** to ensure a responsive and modern interface. Key pages include:

- **Home Page**: Provides easy navigation to clubs, events, news, and notices.
- **Login Page**: Secure login access for users, admins, and club executives.
- **Registration Page**: Allows users to register as club executives.

### 6.3 Back-end Design

The **back-end** is built using **Django**, ensuring secure user authentication and efficient data management. Key features include:

- Strong authentication mechanisms (e.g., JWT, Session-based).
- A scalable architecture that allows easy future enhancements.

### 6.4 Testing

A comprehensive **testing process** was conducted, including:

- **Functional Testing**: To ensure that all features work as intended.
- **Usability Testing**: To ensure the interface is user-friendly.
- **Security Testing**: To ensure the platform is secure and data is protected.

Both **manual and automated testing** were performed to verify the application’s performance and usability.

---

## 7. Conclusion and Future Scope

### Conclusion

The **DIUOEIS** project provides a centralized platform for managing student events and clubs at Daffodil International University. By focusing on user experience and secure, efficient data management, the platform aims to enhance student engagement and streamline administrative tasks.

### Future Scope

- Integration of a **Campus TV System**.
- Implementation of a **messaging system** to improve communication.
- Addition of a **secure payment gateway** for events and club activities.

By focusing on continuous improvement, DIUOEIS strives to remain a valuable tool for the university community.

---

This documentation summarizes the DIUOEIS project, covering its core features, design requirements, and implementation details. Feel free to adapt the document as needed.

--- 
