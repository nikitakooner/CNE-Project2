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

![app-diagram](https://i.imgur.com/wnbDazy.png)

## Testing

Unit Tests have been included for both the frontend and backend services.

To test the backend service, you will need two things:

1. A database called `testdb`
2. A `TEST_DATABASE_URI` environment variable, which contains the database connection for the `testdb` database.

You can run the tests using the command:

```
pytest
```

To generate a coverage report, you will need to run:

```
pytest --cov application
```

## Infrastructure

The **Minimum Viable Product** for this project should at least demonstrate the following infrastructure diagram:

![mvp-diagram](https://i.imgur.com/i5qfOas.png)

**Stretch goals** for this project include:

- Using **Terraform to configure the Kubernetes Cluster** for production 
- Using **Terraform and Ansible to configure the Test VM**

Completing the stretch goals should yield an infrastructure diagram similar to the following:

![stretch-digram](https://i.imgur.com/Q5zljVl.png)

**Good luck!**
