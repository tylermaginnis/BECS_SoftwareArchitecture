# High-Level Architectural Overview

This document provides a high-level overview of the architectural design for our next-generation Blood Establishment Computer System (BECS) platform. The architecture is designed to be scalable, secure, and aligned with our strategic goals.

## Architectural Diagram

Below is the high-level architectural diagram of the system:

<img src="docs/rendered/HIGH_LEVEL_ARCHITECTURAL_DIAGRAM.svg" style="width: 100%;" alt="High-Level Architectural Diagram"/>

## Key Components

### Angular Applications - Client Layer

<table>
  <tr>
    <td style="width: 40%;"><img src="docs/rendered/layers/CLIENT_LAYER.svg" alt="Client Layer" style="width: 100%;"/></td>
    <td style="width: 60%;">
      <p>The client layer consists of Angular applications that interact with the system. These applications provide the user interface and handle user interactions.</p>
      <p>Each Angular application is designed to be modular and reusable, ensuring that components can be easily maintained and updated. The client layer includes various features such as:</p>
      <ul>
        <li>Appointment Scheduling System: Manages scheduling, reminders, and cancellations of appointments.</li>
        <li>Donor Management System: Handles registration, history tracking, and notifications for donors.</li>
        <li>Inventory Management System: Oversees tracking of blood units, storage conditions, and expiration dates.</li>
        <li>Compliance and Reporting System: Ensures regulatory compliance, maintains audit logs, and generates reports.</li>
      </ul>
      <p>Additionally, the client layer is responsible for rendering dynamic content, validating user inputs, and ensuring a seamless user experience across different devices and browsers.</p>
    </td>
  </tr>
</table>

### 1. Appointment Scheduling

<table>
  <tr>
    <td style="width: 60%;">
      <p>The Appointment Scheduling system is a crucial component of the client layer. It manages the scheduling, reminders, and cancellations of appointments. This system ensures that appointments are efficiently organized and that users receive timely notifications.</p>
      <p>Key features of the Appointment Scheduling system include:</p>
      <ul>
        <li>Easy-to-use interface for booking and managing appointments.</li>
        <li>Automated reminders and notifications to reduce no-shows.</li>
        <li>Integration with calendar applications for seamless scheduling.</li>
        <li>Support for rescheduling and cancellation of appointments.</li>
        <li>Real-time availability updates to prevent double-booking.</li>
      </ul>
      <p>Overall, the Appointment Scheduling system enhances user experience by providing a reliable and efficient way to manage appointments.</p>
    </td>
    <td style="width: 40%;"><img src="docs/rendered/layers/client/APPOINTMENT_SCHEDULING.svg" alt="Appointment Scheduling" style="width: 100%;"/></td>
  </tr>
</table>

### 2. Donor Management

<table>
  <tr>
    <td style="width: 60%;">
      <p>The Donor Management system is a vital component of the client layer. It handles the registration, history tracking, and notifications for donors. This system ensures that donor information is accurately maintained and that donors receive timely updates.</p>
      <p>Key features of the Donor Management system include:</p>
      <ul>
        <li>Comprehensive donor registration and profile management.</li>
        <li>Tracking of donation history and eligibility status.</li>
        <li>Automated notifications for donation reminders and eligibility updates.</li>
        <li>Integration with health records for seamless data exchange.</li>
        <li>Support for managing donor preferences and communication channels.</li>
      </ul>
      <p>Overall, the Donor Management system enhances the donor experience by providing a reliable and efficient way to manage donor information and interactions.</p>
    </td>
    <td style="width: 40%;"><img src="docs/rendered/layers/client/DONOR_MANAGEMENT.svg" alt="Donor Management" style="width: 100%;"/></td>
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



