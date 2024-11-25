[![Build Status](https://dev.azure.com/odluser270065/udacity_project/_apis/build/status%2Fokayenis.udacity_project?branchName=main)](https://dev.azure.com/odluser270065/udacity_project/_build/latest?definitionId=2&branchName=main)

[![Python application test with Github Actions](https://github.com/okayenis/udacity_project/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/okayenis/udacity_project/actions/workflows/pythonapp.yml)

# Overview

## Agile Development with Azure

This project demonstrates an Agile approach to developing and deploying a Flask-based application using GitHub and Azure. The workflow integrates GitHub Actions and Azure Pipelines for efficient CI/CD and deployment. Key aspects of the project include:

1. **GitHub Repository and GitHub Actions**: The Flask starter code was set up in this repository, leveraging GitHub Actions for streamlined version control and collaboration.
   
2. **Azure Pipeline Deployment**: An Azure pipeline was created to automate the deployment of the application to an Azure Web App. The pipeline was configured to build and release updates with each code change, ensuring rapid iteration and deployment.

3. **Self-Hosted Agent**: The pipeline utilized a self-hosted agent, which provided control over the build environment and optimized the deployment process to Azure resources.

4. **Prediction API Integration**: After deployment, the application was successfully configured to fetch predictions through an integrated API endpoint.

This project illustrates the full lifecycle of developing, deploying, and testing a web application on the Azure platform, showcasing the power of Agile practices with modern cloud tools.

## Project Plan

Trello Board
https://trello.com/b/HqgvA3rc/udacity

Spread Sheet TBA

## Instructions

* Python 3.10+ (compatible with 3.8+)
* make (for running Makefile commands)
* Git (for version control)
* An Azure account with access to Azure App Service
* Basic understanding of GitHub Actions and Azure Pipelines

```bash
git clone <repository_url>
cd <repository_name>
python3 -m venv venv
source venv/bin/activate
python3 -m install -r requirements.txt
python app.py
```

Making Predictions
1. Test Locally
Use the provided script to send prediction data to the local application:
- Before running the script make sure that $PORT in the make_prediction.sh is same with your local app post. You can see the port after running app.py
```bash
./make_prediction.sh
```
2. Test on Azure (Post Deployment)
Modify the make_predict_azure_app.sh script with your Azure App Service URL:
- Before running the `make_predict_azure_app.sh` script, ensure that the app name inside the script has been updated accordingly.
 
```bash
Copy code
./make_predict_azure_app.sh
The script sends data and retrieves the predicted house price based on the model.
```

* Project running on Azure App Service
![Screenshot 2024-11-25 at 14 37 47](https://github.com/user-attachments/assets/8158cca9-a606-472a-8036-7289731b1ca1)

* Project cloned into Azure Cloud Shell
* ![image](https://github.com/user-attachments/assets/7fc9d123-0516-4e95-9dc3-a6d33c937ab3)

* Passing tests that are displayed after running the `make all` command from the `Makefile`
![image](https://github.com/user-attachments/assets/2c114ff2-c8f2-4f1c-b69e-fd46bff7a798)

* Output of a test run
![image](https://github.com/user-attachments/assets/b20a9d14-d10a-4202-a0c9-d472d88230c0)

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).
![image](https://github.com/user-attachments/assets/62be197e-2a51-488e-beca-98fc3f7098de)

* Running Azure App Service from Azure Pipelines automatic deployment
![image](https://github.com/user-attachments/assets/62ef7c98-b374-44df-8ff6-e4b165070e5c)

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
![image](https://github.com/user-attachments/assets/1a8a34b3-fe3c-4c4e-8d31-4d84b6626935)


The output should look similar to this:


```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

```json
[
    {
        "machineName": "10-30-1-172_default",
        "lastUpdated": "2024-11-25T13:23:31.8628449Z",
        "size": 34018,
        "href": "https://udacityproject2.scm.azurewebsites.net/api/vfs/LogFiles/2024_11_25_10-30-1-172_default_docker.log",
        "path": "/home/LogFiles/2024_11_25_10-30-1-172_default_docker.log"
    },
    {
        "machineName": "10-30-1-172_default_scm",
        "lastUpdated": "2024-11-25T13:08:36.5383514Z",
        "size": 61532,
        "href": "https://udacityproject2.scm.azurewebsites.net/api/vfs/LogFiles/2024_11_25_10-30-1-172_default_scm_docker.log",
        "path": "/home/LogFiles/2024_11_25_10-30-1-172_default_scm_docker.log"
    },
    {
        "machineName": "10-30-1-172",
        "lastUpdated": "2024-11-25T13:09:51.6462375Z",
        "size": 21840,
        "href": "https://udacityproject2.scm.azurewebsites.net/api/vfs/LogFiles/2024_11_25_10-30-1-172_docker.log",
        "path": "/home/LogFiles/2024_11_25_10-30-1-172_docker.log"
    }
]
```

## Enhancements

### Future Improvements

1. Frontend Integration

* Develop a user-friendly web interface for interacting with the Flask API.
* Use modern JavaScript frameworks like React or Angular to create a responsive and intuitive dashboard for making predictions and visualizing results.

2. Add Authentication

* Implement secure authentication mechanisms, such as OAuth2, JWT, or API keys, to restrict access to authorized users.
* Integrate Azure Active Directory for seamless user management and enterprise-grade security.

3. Containerization

* Package the Flask application into a Docker container to ensure consistent deployment across environments.
* Use Azure Kubernetes Service (AKS) or Docker Compose to enable scalability, orchestration, and simplified resource management.

## Demo 

[LinkForDemo](https://youtu.be/REPadvaFHGo)
