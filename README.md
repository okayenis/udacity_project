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
![image](https://github.com/user-attachments/assets/8cf67fc2-5d88-4c65-a3ca-6c542094882d)

* Project cloned into Azure Cloud Shell
![image](https://github.com/user-attachments/assets/7892c448-0f42-497c-90d0-aaca110ec70a)

* Passing tests that are displayed after running the `make all` command from the `Makefile`
![image](https://github.com/user-attachments/assets/aed16d5b-b0ae-4bac-8bbd-94311f519ca1)

* Output of a test run
![image](https://github.com/user-attachments/assets/1eb0ce8f-2aa5-4b90-93b4-b7061b3a08a9)

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment
![image](https://github.com/user-attachments/assets/bab22867-7ea5-4c52-9212-7d15f50fe9bc)

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:
![image](https://github.com/user-attachments/assets/ab38f4f0-cc2b-4c5b-84cb-20b61f8be4c9)

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
