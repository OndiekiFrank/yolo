# Explanation of Playbook Execution

## Order of Execution
1. **Environment Setup**:
   - **Objective**: Provision the Vagrant virtual machine with Ubuntu server.
   - **Steps**:
     - Run the following command to start provisioning the virtual machine:
       ```bash
       vagrant up
       ```
     - Vagrant will automatically download the Ubuntu server image if it's not already available locally and create a new virtual machine instance.

2. **Cloning Code**:
   - **Objective**: Clone the code from GitHub repository.
   - **Steps**:
     - Use the `git clone` command to clone the repository into your local machine:
       ```bash
       git clone <repository_url>
       ```
     - Navigate to the project directory:
       ```bash
       cd automated-ecommerce-deployment
       ```

3. **Container Configuration**:
   - **Objective**: Set up Docker containers for the application components.
   - **Steps**:
     - Ansible playbook (`playbook.yml`) contains tasks to configure Docker containers. Ensure that Docker is installed on the provisioned virtual machine.
     - Run the Ansible playbook to execute the tasks:
       ```bash
       ansible-playbook playbook.yml
       ```

4. **Application Deployment**:
   - **Objective**: Deploy the application on the virtual machine.
   - **Steps**:
     - After running the playbook, Ansible will configure the server and deploy the application automatically.
     - Once the playbook execution is complete, access the deployed application using a web browser.

## Role Functions
- **Environment Setup**: Ensures the server is provisioned correctly for the application deployment. It includes tasks like installing required packages and setting up dependencies.
- **Cloning Code**: Retrieves the latest version of the application code from the GitHub repository using the `git` module.
- **Container Configuration**: Defines tasks to set up Docker containers for each component of the application. It utilizes the `docker_container` module to manage Docker containers.
- **Application Deployment**: Executes tasks to deploy and configure the application on the server. This may involve running setup scripts, configuring environment variables, and starting services.

## Ansible Modules
- **git**: Used for cloning the code repository.
- **docker_container**: Configures Docker containers for the application components.
- **apt**: Manages packages on the Ubuntu server.
- **shell**: Executes shell commands for additional configurations.

## Terraform Integration (Stage 2)
In Stage 2, Terraform is used alongside Ansible for resource provisioning. However, as Stage 2 was optional and not implemented in this project, Terraform integration is excluded from the playbook execution explanation.