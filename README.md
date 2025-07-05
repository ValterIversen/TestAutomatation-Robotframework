# 🧪 Test Automation Portfolio

This repository contains **three simple and functional test automation projects**, each focused on a different platform:

- **🌐 Web**
- **📱 Mobile**
- **🔌 API**

The goal is to showcase my knowledge in structuring test automation projects using different tools and languages.

> ⚠️ These are minimal and functional examples, built only to demonstrate code quality, organization, and my understanding of test architecture. They are **not production-level test suites**.

---

## 📂 Projects Overview

### 🌐 Web Automation (Selenium + Robot Framework)

- Uses `SeleniumLibrary` with Robot Framework
- Basic form submission test
- Follows a page-object style using `.resource` files
- Folder: `web/`

### 📱 Mobile Automation (Appium + Robot Framework)

- Uses `AppiumLibrary` with Robot Framework
- Simulates login and registration on a mobile app
- Automatically installs the APK before running tests
- Structured with:
  - `suites/` for test cases
  - `resources/pages/` for screen actions
  - `resources/main.resource` for shared keywords
- Folder: `mobile/`

### 🔌 API Automation (RequestsLibrary + Robot Framework)

- Uses `RequestsLibrary`
- Basic tests for authentication and CRUD endpoints
- Clean and modular with:
  - `suites/` for test cases
  - `resources/` for keywords and variables
- Folder: `api/`

---

## 🛠 Technologies Used

- Robot Framework
- SeleniumLibrary
- AppiumLibrary
- RequestsLibrary
- Python
- Appium
- ADB (Android Debug Bridge)
