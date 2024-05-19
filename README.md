# Automated E-Commerce Platform Deployment

## Overview
This project aims to automate the setup and deployment of an e-commerce platform using Ansible. It involves provisioning a Vagrant virtual machine, configuring it with Ansible, and deploying the application.

## Stage 1: Ansible Instrumentation
### Objectives
- Set up the environment with Vagrant.
- Implement Ansible playbook with the following features:
  - Variables for customization.
  - Roles for modularization.
  - Blocks and tags for organization.
- Configure Docker containers for the application.
- Clone code from GitHub and set up the application on the virtual machine.

### Usage
1. Clone the repository:
   ```bash
   git clone <repository_url>
   ```
2. Navigate to the project directory:
   ```bash
   cd automated-ecommerce-deployment
   ```
3. Provision the virtual machine using Vagrant:
   ```bash
   vagrant up
   ```
4. Run the Ansible playbook to configure and deploy the application:
   ```bash
   ansible-playbook playbook.yml
   ```

## Stage 2: Ansible and Terraform Instrumentation (Optional)
### Objectives
- Integrate Terraform for resource provisioning.
- Use Ansible to configure the server and deploy the application.
- Maintain good practices such as variable usage.

## Deliverables
- GitHub repository with VagrantFile, Playbook, Variable files, and Roles.

## Rubric
- **Git Work Flow**: Descriptive commits, well-documented README.md and explanation.md, proper folder structure.
- **Stage Completion**: Functional completion of both stages.
- **Service Orchestration**: Successful deployment of the application, adherence to good practices.

## Contributors
- - [Ondieki Frank](https://github.com/OndiekiFrank)


## License
This project is licensed under the [MIT License](link_to_license).

---
