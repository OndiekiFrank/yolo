# Kubernetes Project


In this project, we will deploy a Kubernetes application using Amazon Elastic Kubernetes Service (EKS). The project involves setting up a Kubernetes cluster, deploying necessary resources, and ensuring the application runs smoothly on the cluster. Below are the instructions to set up and run the project.

## Project Overview

The project involves deploying a Kubernetes application that utilizes Amazon Elastic Block Store (EBS) as the storage solution. We will deploy the necessary components using Kubernetes YAML manifests and ensure the application works as expected.

## Project Structure

The project repository is organized as follows:

- `README.md`: Instructions on how to set up and run the project.
- `explanation.md`: Explanation of the Kubernetes objects used, method of exposing pods to internet traffic, use of persistent storage, and Git workflow.
- `ebs-csi-controller.yaml`: Kubernetes manifest for deploying the EBS CSI controller.
- `ebs-csi-node.yaml`: Kubernetes manifest for deploying the EBS CSI node.
- `csi-driver.yaml`: Kubernetes manifest for configuring the CSI driver.
- `deployment.yaml`: Kubernetes manifest for deploying the application.
- `service.yaml`: Kubernetes manifest for exposing the application as a service.

## Instructions

1. **Set up Amazon EKS Cluster**: Follow the AWS documentation to set up an Amazon EKS cluster in the desired region (us-west-2).

2. **Authenticate with the Cluster**: Use the AWS CLI to authenticate with the EKS cluster:
   ```bash
   aws eks --region us-west-2 update-kubeconfig --name <cluster-name>
   ```

3. **Deploy EBS CSI Controller**: Apply the `ebs-csi-controller.yaml` manifest to deploy the EBS CSI controller:
   ```bash
   kubectl apply -f ebs-csi-controller.yaml
   ```

4. **Deploy EBS CSI Node**: Apply the `ebs-csi-node.yaml` manifest to deploy the EBS CSI node:
   ```bash
   kubectl apply -f ebs-csi-node.yaml
   ```

5. **Configure CSI Driver**: Apply the `csi-driver.yaml` manifest to configure the CSI driver:
   ```bash
   kubectl apply -f csi-driver.yaml
   ```

6. **Deploy Application**: Apply the `deployment.yaml` manifest to deploy the application:
   ```bash
   kubectl apply -f deployment.yaml
   ```

7. **Expose Application**: Apply the `service.yaml` manifest to expose the application as a service:
   ```bash
   kubectl apply -f service.yaml
   ```

8. **Verify Deployment**: Check the status of the pods to ensure they are running:
   ```bash
   kubectl get pods
   ```

9. **Access Application**: Once the pods are running, access the application using the service IP address or DNS name provided by the service manifest.

##  Objectives

1. **Git Workflow**:
   - Commits: Ensure each step of the project development is captured with descriptive commits.
   - README: Provide a well-documented README and explanation.md files.
   - Folder Structure: Maintain a proper folder structure with a minimum of 10 commits.

2. **Kubernetes Objects Implementation**:
   - Use of StatefulSets for database solution.
   - Use of services to expose pods.
   - Use of Kubernetes controllers to maintain service availability.
   - Application functionality: Ensure the application works as expected.

3. **Use of Persistent Volumes**:
   - Use persistent volumes to prevent data loss upon deletion of the database pod.

## License

This project is licensed under the terms of the MIT license. See the [LICENSE](LICENSE) file for details.

## Contributors

- [Frankline Ondieki](https://github.com/OndiekiFrank) - DevOps Engineer
  - Email: ondiekifrank021@gmail.com

---

By following these instructions, you should be able to successfully set up and run the Kubernetes application on Amazon EKS. If you encounter any issues, refer to the troubleshooting section in the README or reach out for assistance. Happy Kubernetizing!
```
