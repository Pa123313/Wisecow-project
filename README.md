# 🚀 Wisecow Kubernetes Deployment with CI/CD & Monitoring  

This project demonstrates my hands-on DevOps skills by successfully **containerizing, deploying, automating, and securing the Wisecow application** using modern DevOps practices.  

---

## ✅ What I Did  
- 🐳 **Dockerized** the Wisecow application.  
- ☸️ **Deployed** it on a **Kubernetes cluster (Minikube)** with Deployment, Service, and Ingress.  
- 🔄 Built a full **CI/CD pipeline** using GitHub Actions to automatically build, push, and deploy.  
- 🖥️ Developed **automation scripts** for **system health monitoring** and **application health checks**.  

---

## 🖼️ Screenshots  

### 1️⃣ Kubernetes Deployment – Services & Ingress  
Application deployed successfully in Kubernetes with Ingress and Service.  
![Kubernetes Deployment]  
<img width="1099" height="587" alt="k8s-deployment" src="https://github.com/user-attachments/assets/3484bac3-6c3d-4e0d-9f0a-0cc5cefa3276" />


### 2️⃣ Wisecow Application Running – Quote Example 1  
The app is live and serving quotes securely.  
![Wisecow App Quote 1]  
<img width="1237" height="642" alt="wisecow-quote1" src="https://github.com/user-attachments/assets/3b729040-ffc5-41e7-9246-aec3b818548a" />




### 3️⃣ Wisecow Application Running – Quote Example 2  
Verified multiple responses from the application.  
![Wisecow App Quote 2]
<img width="1366" height="669" alt="wisecow-quote2" src="https://github.com/user-attachments/assets/88f0dd6c-59e3-47ab-bca3-f3a6a4ab15f4" />




---

### 4️⃣ GitHub Actions CI/CD Pipeline  
Fully automated pipeline:  
- Builds and pushes Docker image on every commit.  
- Deploys the updated image to the Kubernetes cluster.  
All workflow runs succeeded ✅  
![GitHub Actions Pipeline]
<img width="1352" height="690" alt="github-actions" src="https://github.com/user-attachments/assets/84537b05-1763-431f-ba01-8dcaced202fb" />


---

### 5️⃣ System Health Monitoring Script  
Created a Bash script to continuously check CPU, memory, disk, and processes.  
Alerts are logged when thresholds are exceeded.  
![System Health Script]
<img width="1099" height="320" alt="health-monitor" src="https://github.com/user-attachments/assets/18b6eefd-644c-4be2-85ca-167c7120fb77" />


---

### 6️⃣ Application Health Checker  
Python script checks if the Wisecow app is up/down based on HTTP status codes.  
Ensures uptime monitoring for real-time availability.  

---

## 📂 Repository Structure  
```bash
├── wisecow/               # Application source code
├── Dockerfile             # Dockerization of Wisecow App
├── k8s-manifests/         # Deployment, Service, Ingress YAMLs
├── .github/workflows/     # GitHub Actions CI/CD pipeline
├── scripts/               # Bash/Python automation scripts
├── kubearmor/             # Zero-trust policies 
└── README.md              # Documentation


🛠️ Tools & Technologies Used

Docker – Containerization

Kubernetes (Minikube) – Deployment & Scaling

GitHub Actions – CI/CD Pipeline

Bash & Python – Automation Scripts

KubeArmor – Zero-Trust Security

🎯 Outcome

The Wisecow app is fully containerized and deployed on Kubernetes.

A working CI/CD pipeline automates build → push → deploy.

Scripts for system monitoring and app health checking ensure reliability.


This project showcases my end-to-end DevOps capabilities across automation, container orchestration, CI/CD, and security.


