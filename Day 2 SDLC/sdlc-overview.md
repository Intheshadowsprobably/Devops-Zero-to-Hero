# SDLC Overview

## What is SDLC?
The **Software Development Life Cycle (SDLC)** is a standard process followed by the software industry to design, develop, and test high-quality products.

Whether you work at a startup, an MNC, or a unicorn company, everyone follows this standard to ensure consistency and quality.

## The Goal
To deliver a **high-quality product** that meets customer expectations through a structured approach.

## The 6 Phases of SDLC
Imagine `example.com` (an e-commerce site) wants to launch a new "Kids Catalog" feature. Here is how they follow the cycle:

### 1. Planning & Requirement Gathering
- **Who:** Business Analysts, Product Owners.
- **Activity:** Gathering feedback from customers and stakeholders.
- **Example:** Researching if customers actually want a Kids section. If interest is low, the idea is dropped here to save resources.

### 2. Defining Requirements
- **Who:** Product Owners, Senior Team Members.
- **Activity:** Documenting the requirements clearly.
- **Output:** **Software Requirement Specification (SRS)** document. This details exactly what needs to be built based on the planning phase.

### 3. Designing (HLD & LLD)
- **Who:** Architects, Tech Leads.
- **High-Level Design (HLD):** Focuses on system architecture, scalability, and database choices (e.g., "We need a scalable SQL database for Christmas traffic").
- **Low-Level Design (LLD):** Focuses on specific functions, modules, and logic (e.g., "Function X will call Database Y with Argument Z").

### 4. Building (Development)
- **Who:** Developers.
- **Activity:** Writing the actual code based on the designs.
- **Process:** Developers write code locally, get it reviewed by peers, and push it to a **Source Code Repository** (like Git).

### 5. Testing
- **Who:** Quality Assurance (QE) Engineers.
- **Activity:** Deploying the code to a test server and verifying it works as expected.
- **Goal:** Ensure the code is bug-free before reaching production.

### 6. Deployment
- **Who:** Release Managers / DevOps.
- **Activity:** Promoting the tested application to the Production environment where real customers use it.

*Note: Once deployed, the cycle repeats for new features or fixes (Agile/Iterative approach).*
