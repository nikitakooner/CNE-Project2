# QAC SFIA2 Project

## Brief

The final deliverable for this project is a completed CI Pipeline with full documentation around the utilisation of supporting tools.
The CI Pipeline needs to be able to successfully deploy the application you have created as per the requirements.

The application must:

- Be deployed to a **Virtual Machine for testing**
- Be deployed in a **managed Kubernetes Cluster for production**
- Make use of a **managed Database solution**

I must create the following and utilise technologies i have learnt during the training

- A Jira board with full expansion on tasks 
- A risk assessment to record any issues or risks that you faced creating your project.
- The application must be deployed using containerisation and orchestration tools (kubernetes and docker)
- The application must be tested through the CI pipeline.
- The project must make use of two managed Database Servers: 1 for Testing and 1 for Production.
- If a change is made to the code base, Webhooks should be used so that Jenkins recreates and redeploys the changed application.
- The infrastructure for the project should be configured using an infrastructure management tool (Terraform).
- Create an Ansible Playbook that will provision the environment that your CI Server needs to run.
- The project must make use of a reverse proxy to make your application accessible to the user (NGINX)

## Infrastructure

The **Minimum Viable Product** for this project should at least demonstrate the following infrastructure diagram:

![mvp-diagram](https://i.imgur.com/i5qfOas.png)

The diagram shows the terraform symbol in the bottom left. I used terraform to create 2 EC2 instances, one for ansible and one for testing. Terraform will also create 2 RDS instances with MYSQL installed. On the EC2 I have created using terraform I will install ansible on there in order for jenkins to be installed and anything else i want installed such as docker. I will set my kubernetes cluster up manually. I will ssh from my jenkins machine to my test VM and run pytest and run kubectl commands to control my kubernetes cluster. Jenkins will be set up manually using port 8080 create plugins and use jenkins pipeline jobs. I will create a Jenkins File on my github to use on jenkins. The file will consist of building new images, needs to run the tests to check the new code is working fine, if the tests pass then push the images to docker hub and then finally update the kubernetes cluster. 

**Jira Board** 
I planned my project using a sprint board on Jira. 
![Screen Shot 2020-11-23 at 11 53 01 AM](https://user-images.githubusercontent.com/71395610/99959417-e1aad600-2d82-11eb-8f9e-8355dab60112.png)

**What went well** 
I set up my EC2 creating subnet groups,VPC and Key Pair
I created 2 RDS through terraform
Install ansible 
Created an ansible playbook
Used ansible to install jenkins, kubernetes, docker
SSH'd into my jenkins VM using terraform output
Opened jenkins on port 8080
Set up jenkins 
Created a jenkins file


**Next Time** for this project i will:

- Using **Terraform to configure the Kubernetes Cluster** for production 
- Using **Terraform and Ansible to configure the Test VM**

Completing the stretch goals should yield an infrastructure diagram similar to the following:

![stretch-digram](https://i.imgur.com/Q5zljVl.png)

