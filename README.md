# Karate API Automation Framework

This repository contains automated tests for the RESTful APIs using the Karate framework.

## Introduction

Karate is a powerful, easy-to-use, and flexible open-source tool for API testing and automation. It combines the capabilities of a testing framework with the convenience of a domain-specific language to create expressive and readable API tests.

## Features

- **Easy-to-read syntax**: Karate's DSL (Domain-Specific Language) allows for writing tests in a straightforward and readable manner, reducing the learning curve for new team members.
- **Built-in assertions**: Karate comes with built-in support for common assertions, making it easy to validate API responses without the need for additional libraries.
- **Data-driven testing**: Karate supports data-driven testing out of the box, allowing for the creation of dynamic tests that iterate over multiple sets of input data.
- **Parallel execution**: Karate supports parallel execution of tests, improving test execution times and overall efficiency.
- **Integration with Cucumber**: Karate integrates seamlessly with Cucumber, allowing for the creation of feature files that are easy to understand and maintain.

## Getting Started

### Prerequisites

Before running the tests, ensure you have the following installed:

- Java Development Kit (JDK) 8 or higher
- Gradle

### Installation

1. Clone this repository to your local machine.


### Execution

./gradlew clean test --tests feature.KarateTestParallel -Dkarate.options='--tags @Test' -Dkarate.env='dev' -i

1. Use above command to run particular test or multiple tests based on the tags.
2. Please mention appropriate env so that it will pick data based on environment.

### Reporting

For report, Please check target folder and specifically look for "overview-tags.html" file present under folder "cucumber-html-reports" for detail report.
