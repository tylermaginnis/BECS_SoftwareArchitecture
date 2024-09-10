# High-Level Architectural Overview

This document provides a high-level overview of the architectural design for our next-generation Blood Establishment Computer System (BECS) platform. The architecture is designed to be scalable, secure, and aligned with our strategic goals.

## Architectural Diagram

Below is the high-level architectural diagram of the system:

<img src="docs/rendered/HIGH_LEVEL_ARCHITECTURAL_DIAGRAM.svg" style="width: 100%;" alt="High-Level Architectural Diagram"/>

## Key Components

### Client Layer

<table>
  <tr>
    <td style="width: 40%;"><img src="docs/rendered/layers/CLIENT_LAYER.svg" alt="Client Layer" style="width: 100%;"/></td>
    <td style="width: 60%;">
      <p>The client layer consists of Angular applications that interact with the system. These applications provide the user interface and handle user interactions.</p>
      <p>Each Angular application is designed to be modular and reusable, ensuring that components can be easily maintained and updated. The client layer includes various features such as:</p>
      <ul>
        <li>Registration: Allows users to sign up and create accounts.</li>
        <li>Scheduling: Enables users to book and manage appointments.</li>
        <li>History Tracking: Provides a detailed history of user interactions and activities.</li>
        <li>Notifications: Sends alerts and reminders to users about important events and updates.</li>
      </ul>
      <p>Additionally, the client layer is responsible for rendering dynamic content, validating user inputs, and ensuring a seamless user experience across different devices and browsers.</p>
    </td>
  </tr>
</table>

### Appointment Scheduling

<table>
  <tr>
    <td style="width: 100%;"><img src="docs/rendered/layers/client/APPOINTMENT_SCHEDULING.svg" alt="Appointment Scheduling Diagram" style="width: 100%;"/></td>
  </tr>
  <tr>
    <td style="width: 100%;">
    <p>The Appointment Scheduling diagram illustrates the components and their interactions within the Appointment Scheduling App. The main components are:</p>
    <b>Views</b>
    <ul>
        <li><strong>Appointment List:</strong> Displays a list of all appointments and allows users to view details, fill out forms, and see the calendar view.</li>
        <li><strong>Appointment Details:</strong> Provides detailed information about a specific appointment and interacts with the API Gateway and NgRx Store.</li>
        <li><strong>Appointment Form:</strong> Allows users to create or edit appointments, interacting with the API Gateway and NgRx Store.</li>
        <li><strong>Calendar View:</strong> Shows appointments in a calendar format and interacts with the API Gateway and NgRx Store.</li>
        <li><strong>Notification List:</strong> Displays notifications related to appointments and interacts with the Notification Service and NgRx Store.</li>
        <li><strong>User Profile:</strong> Manages user information and interacts with the User Service and NgRx Store.</li>
    </ul>
    </td>
</tr>
<tr>
    <td style="width: 100%;">
    <b>Services</b>
    <ul>
        <li><strong>Appointment Service:</strong> Handles appointment-related transactions through the API Gateway.</li>
        <li><strong>Notification Service:</strong> Manages notifications and interacts with the API Gateway.</li>
        <li><strong>User Service:</strong> Manages user-related transactions through the API Gateway.</li>
        <li><strong>Calendar Service:</strong> Handles calendar-related transactions through the API Gateway.</li>
    </ul>
    </td>
</tr>
<tr>
    <td style="width: 100%;">
    <b>Entities</b>
    <ul>
        <li><strong>Entities:</strong> Represents the main entities in the system, including Appointment, Notification, and User.</li>
    </ul>
    </td>
</tr>
</table>


### API Gateway
The API Gateway is responsible for routing requests from the client layer to the appropriate microservices. It supports GraphQL and RSocket for efficient communication.

### Microservices Layer
This layer contains the microservices that implement the core business logic. It also includes event streaming using Kafka to handle asynchronous communication between services.

### Containerization
Microservices are deployed as containers using Docker. Kubernetes is used to manage and orchestrate these containers, ensuring high availability and scalability.

### Cloud Infrastructure
The system runs on AWS cloud services, including EC2, S3, RDS, and Lambda. Infrastructure as Code (IaC) tools like Terraform and AWS CloudFormation are used to automate the deployment and management of cloud resources.

### CI/CD Pipeline
The CI/CD pipeline, implemented using GitLab CI/CD, automates the build, test, and deployment processes, ensuring rapid and reliable delivery of software updates.

### Security & Compliance
Security and compliance are ensured through data encryption, access controls, and secure configurations. This layer ensures that the system meets all relevant security standards and regulations.

### Monitoring & Optimization
Monitoring tools are used to track the performance and health of the system. Performance optimization techniques are applied to ensure the system runs efficiently and can handle the expected load.



