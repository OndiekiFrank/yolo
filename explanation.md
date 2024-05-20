# Explanation.md

## Project Overview

This project involves deploying an e-commerce web application using Ansible for configuration management on a Vagrant-provisioned server. The application is containerized using Docker, and the setup includes automated provisioning of the environment, cloning the application code from GitHub, and running the necessary setups to successfully deploy the application.

## Objectives

### Stage 1: Ansible Instrumentation

The main objectives of this project are:

1. **Provision Vagrant VM**: Set up the environment by provisioning a Vagrant virtual machine with Ubuntu 20.04.
2. **Ansible Playbook**: Create an Ansible playbook to automate the deployment process, utilizing variables, roles, blocks, and tags.
3. **Docker Containerization**: Clone the e-commerce application code from GitHub and configure Docker containers to run the application.

### Stage 2: Optional Terraform Integration

Use Terraform for resource provisioning alongside Ansible for server configuration and application deployment.

## Prerequisites

- Vagrant
- VirtualBox
- Ansible
- Docker and Docker Compose

## Project Structure

```plaintext
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
├── vars
├── README.md
└── explanation.md
```

## Step-by-Step Instructions

### Step 1: Provision the Vagrant Virtual Machine

1. **Install Vagrant and VirtualBox**:
   - [Vagrant Installation Guide](https://www.vagrantup.com/docs/installation)
   - [VirtualBox Installation Guide](https://www.virtualbox.org/manual/ch02.html)

2. **Clone the Project Repository**:
   ```bash
   git clone https://github.com/OndiekiFrank/yolo.git
   cd yolo
   ```

3. **Run the Vagrant Command to Set Up the VM**:
   ```bash
   vagrant up --provision
   ```

### Step 2: Ansible Playbook Execution

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

**Manual Execution**:
```bash
ansible-playbook playbook.yml
```

### Application Access

Once the setup is complete, access the application via a web browser:
- Frontend: `http://localhost:3000`
- Backend: `http://localhost:5000`

### Verifying the Setup

To verify that the containers are running without any port conflicts, execute:
```bash
docker ps
```
This command should display the running Docker containers for MongoDB, the backend, and the frontend.

## Optional Stage: Terraform and Ansible Integration

If you choose to proceed with the optional stage, follow these steps:

1. **Create a New Branch**:
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

The playbook and roles are structured to ensure modularity and clarity. Each role is responsible for a specific part of the deployment process:

1. **Frontend Role**: 
   - Tasks include installing dependencies, setting up the environment, and deploying the frontend application.
   
2. **Backend Role**:
   - Tasks include setting up the backend environment, installing dependencies, and deploying the backend application.

### Key Ansible Modules Used

- **apt**: For installing packages.
- **git**: For cloning repositories.
- **docker_container**: For managing Docker containers.
- **service**: For managing services (e.g., MongoDB).

### Order of Execution

1. **Environment Setup**: Prepares the system with necessary packages and configurations.
2. **Code Cloning**: Retrieves the latest application code from the repository.
3. **Docker Setup**: Deploys the application in Docker containers using Docker Compose.

## Deliverables

1. **GitHub Repository**: Ensure all work is pushed to [GitHub](https://github.com/OndiekiFrank/yolo).
2. **Documentation**: Include `README.md` and `explanation.md` files for detailed instructions and explanations.

## Conclusion

This project demonstrates the automation of deploying a containerized e-commerce application using Ansible and Docker. By following the steps outlined, anyone should be able to clone the repository, provision the VM, and run the application seamlessly.

For further details, refer to the [README.md](https://github.com/OndiekiFrank/yolo/master/README.md) file and the well-documented commits in the GitHub repository.