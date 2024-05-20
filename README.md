

```markdown
# E-commerce Platform Deployment with Ansible

## Overview

This project involves deploying an e-commerce web application using Ansible for configuration management on a Vagrant provisioned server. The application is containerized using Docker, and the setup includes automated provisioning of the environment, cloning the application code from GitHub, and running the necessary setups to successfully deploy the application.

## Objectives

The main objectives of this project are:

1. **Ansible Instrumentation**:
    - Set up the environment by provisioning a Vagrant virtual machine with Ubuntu 20.04.
    - Create an Ansible playbook to automate the deployment process.
    - Use variables, roles, blocks, and tags for effective task management.
    - Clone the e-commerce application code from GitHub and configure Docker containers to run the application.
  
2. **Optional Stage**: Use Terraform for resource provisioning along with Ansible for configuration management.

## Prerequisites

- Vagrant
- VirtualBox
- Ansible
- Docker and Docker Compose

## Project Structure

```
.
├── Vagrantfile
├── playbook.yml
├── docker-compose.yml
├── roles
│   ├── frontend
│   │   ├── tasks
│   │   └── ...
│   ├── backend
│   │   ├── tasks
│   │   └── ...
│   └── ...
└── README.md
```

## Setup Instructions

### Step 1: Provision the Vagrant Virtual Machine

1. Install Vagrant and VirtualBox if they are not already installed.
2. Clone the project repository:
   ```bash
   git clone <repository_url>
   cd <repository_directory>
   ```
3. Run the Vagrant command to set up the VM:
   ```bash
   vagrant up --provision
   ```

### Step 2: Ansible Playbook

The Ansible playbook `playbook.yml` performs the following tasks:

1. **Environment Setup**:
    - Update the apt cache and install required packages.
    - Install Docker and Docker Compose.
    - Install MongoDB and stop its service to avoid port conflicts.
  
2. **Clone Application Code**:
    - Clone the frontend and backend code from the GitHub repository.
    - Increase Git buffer size and timeout settings to handle large repositories.

3. **Docker Container Setup**:
    - Copy the `docker-compose.yml` file to the VM.
    - Use Docker Compose to bring up the containers.

### Ansible Playbook Execution

The playbook is designed to run automatically during the Vagrant provisioning step. However, it can also be executed manually with the following command:

```bash
ansible-playbook playbook.yml
```

### Application Access

Once the setup is complete, the application should be accessible via a web browser. By default, the frontend should be accessible at `http://localhost:3000` and the backend at `http://localhost:5000` on your local machine.

### Verifying the Setup

To verify that the containers are running without any port conflicts, execute:

```bash
docker ps
```

This command should display the running Docker containers for MongoDB, the backend, and the frontend.

## Optional Stage: Terraform and Ansible Integration

If you choose to proceed with the optional stage, you will use Terraform for resource provisioning. The integration involves:

1. **Creating a New Branch**:
    ```bash
    git checkout -b stage_two
    mkdir stage_two
    cd stage_two
    ```

2. **Terraform Scripts**:
    - Write Terraform scripts to provision the necessary infrastructure.
    - Integrate Ansible with Terraform using the `remote-exec` and `local-exec` provisioners.

3. **Running Terraform**:
    ```bash
    terraform init
    terraform apply
    ```

## Explanation of Playbook

An explanation of the playbook and roles used is provided in the `explanation.md` file. This includes a detailed breakdown of each task, the purpose of roles, and the sequence of execution.

## Deliverables

- Ensure all work is pushed to GitHub.
- Include the `Vagrantfile`, `playbook.yml`, variable files, and roles in the repository.
- Detailed documentation with `README.md` and `explanation.md`.

## Conclusion

This project demonstrates the ability to automate the deployment of a containerized e-commerce application using Ansible and Docker. By following the steps outlined, anyone should be able to clone the repository, provision the VM, and run the application seamlessly.

For further details, refer to the [explanation.md](explanation.md) file and the well-documented commits in the GitHub repository.
```
