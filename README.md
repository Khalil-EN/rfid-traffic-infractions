# Secure Traffic Infraction Management Web Application

A secure web application developed as part of a university project for managing traffic infractions and their payment.

Traffic infractions are associated with users through **RFID identification**. Authenticated users can access their account, consult their infractions, and manage the payment of outstanding fines.

The project focuses particularly on **web application security**, including protection against SQL injection, Cross-Site Scripting (XSS), and Cross-Site Request Forgery (CSRF).

## Features

### User Authentication

* User registration and login
* Session-based authentication
* Password hashing
* Account management
* Account deletion
* Logout functionality

### RFID-based Identification

Each user is associated with an RFID identifier.

Traffic infractions can therefore be associated with a specific user through their RFID information.

### Infraction Management

Authenticated users can:

* View their traffic infractions
* Consult the details of an infraction
* View the amount to pay
* Check the payment status
* Access the payment interface for unpaid infractions

### Payment

The application provides a payment workflow for traffic infractions.

The payment functionality is implemented as part of the project for demonstration purposes.

## Security

Security is one of the main objectives of this project.

### SQL Injection Protection

Database operations use parameterized queries / prepared statements where user input is involved, preventing malicious input from being interpreted as part of an SQL query.

### Cross-Site Scripting (XSS) Protection

User-controlled data is properly handled and escaped before being displayed in HTML pages in order to prevent injected JavaScript from being executed in the user's browser.

### Cross-Site Request Forgery (CSRF) Protection

State-changing requests are protected using **CSRF tokens**.

The application verifies the token received from the client before processing protected requests, preventing unauthorized websites from performing actions on behalf of an authenticated user.

A CSRF attack demonstration is also included in the project to illustrate the vulnerability and its mitigation.

### Password Security

User passwords are not stored directly in plaintext. Password hashing is used to protect stored credentials.

### Session Management

Authenticated users are identified using PHP sessions, allowing access to protected pages to be restricted to logged-in users.

## Technologies

* **PHP**
* **MySQL**
* **HTML5**
* **CSS3**
* **JavaScript**
* **WAMP**
* **Apache**
* **PHP Sessions**
* **MySQLi**
* **OpenSSL**

## Running the Application

The application was developed to run locally using **WAMP**.

### Requirements

* WAMP
* Apache
* MySQL
* PHP
* A web browser

### Installation

1. Install and start WAMP.

2. Copy the project folder into the WAMP `www` directory.

Example:

```text
C:\wamp64\www\Web_app\
```

3. Start the following WAMP services:

```text
Apache
MySQL
```

4. Import the project's SQL database using **phpMyAdmin**.

5. Make sure the database connection configuration matches your local MySQL configuration.

6. Open the application in your browser:

```text
http://localhost/Web_app/
```

## Application Workflow

```text
                 ┌─────────────────┐
                 │      User       │
                 └────────┬────────┘
                          │
                          ▼
                 ┌─────────────────┐
                 │ Authentication  │
                 │   + RFID ID     │
                 └────────┬────────┘
                          │
                          ▼
                 ┌─────────────────┐
                 │ User Dashboard  │
                 └────────┬────────┘
                          │
                          ▼
                 ┌─────────────────┐
                 │   Infractions   │
                 └────────┬────────┘
                          │
                          ▼
                 ┌─────────────────┐
                 │     Payment     │
                 └─────────────────┘

        Security layer:
        ─────────────────────────────
        SQL Injection Protection
        XSS Protection
        CSRF Protection
        Password Hashing
        Session Authentication
```

## Project Structure

The application is intentionally kept as a self-contained WAMP project so that it can be deployed locally by copying the project folder into the server's `www` directory.

## Security Demonstration

The project includes a CSRF attack demonstration used to show how an unauthorized request can be prevented when CSRF protection is correctly implemented.

This demonstration is included for educational and security-testing purposes.

## Academic Context

This project was developed as part of a university course project focused on **secure web application development**.

The main objectives were to develop a functional web application while applying fundamental web security principles and protecting sensitive user operations.

## Disclaimer

This project was developed for educational purposes and is intended to be run in a local development environment.

The payment functionality is intended as a demonstration of the application's payment workflow and should not be considered a production payment system.
