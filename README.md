# Secure Cloud Infrastructure

A hands-on cloud and DevOps project demonstrating containerized application deployment, Kubernetes orchestration, automated scaling, self-healing workloads, and monitoring with Prometheus and Grafana.

## Project Overview

This project deploys a Flask web application in a Kubernetes environment and implements infrastructure monitoring and workload management. It explores how cloud-native applications can be deployed, monitored, and maintained reliably.

## Architecture

```text
Developer
   |
   v
Flask Application
   |
   v
Docker Container
   |
   v
Kubernetes Cluster (Kind)
   |
   +-- Deployment and Pods
   +-- Kubernetes Service
   +-- Readiness and Liveness Probes
   +-- Horizontal Pod Autoscaler (HPA)
   |
   v
Prometheus
   |
   v
Grafana Dashboards and Alerting
```

Terraform configuration files are also included for infrastructure-as-code practice.

## Technologies Used

- **Cloud and IaC:** AWS, Terraform
- **Containers:** Docker
- **Orchestration:** Kubernetes, Kind
- **Application:** Python, Flask
- **Autoscaling:** Kubernetes Horizontal Pod Autoscaler
- **Monitoring:** Prometheus, Grafana
- **Package Management:** Helm
- **Version Control:** Git and GitHub
- **Environment:** Ubuntu on WSL

## Implemented Features

- Containerized a Flask application using Docker.
- Deployed the application using Kubernetes Deployment and Service resources.
- Configured CPU and memory resource requests and limits.
- Implemented readiness and liveness probes.
- Demonstrated Kubernetes self-healing by deleting a Pod and observing its replacement.
- Configured Horizontal Pod Autoscaler (HPA).
- Tested scaling under CPU load, including scaling up to five replicas and back down to two.
- Installed Prometheus and Grafana using Helm.
- Queried Kubernetes metrics through Prometheus.
- Created a Grafana dashboard for CPU utilization and Pod readiness.
- Started configuring alerts for Pod availability.

## Project Structure

```text
secure-cloud-infrastructure/
├── app/
│   ├── app.py
│   └── requirements.txt
├── docker/
│   └── Dockerfile
├── kubernetes/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── ...
├── terraform/
│   └── ...
├── .gitignore
└── README.md
```

*Note: The directory and file names above should be adjusted to match the actual repository structure.*

## Prerequisites

Install or configure the following tools before reproducing the project:

- Docker
- kubectl
- Kind
- Helm
- Python 3
- Terraform, if working with the Terraform configuration

## Run Locally

Clone the repository:

```bash
git clone https://github.com/Tejashwini53/secure-cloud-infrastructure..git
cd secure-cloud-infrastructure
```

Build the application container from the Dockerfile:

```bash
docker build -t secure-cloud-app -f docker/Dockerfile .
```

Create a local Kubernetes cluster:

```bash
kind create cluster --name secure-cloud
```

Deploy the Kubernetes manifests using the actual manifest paths in the repository:

```bash
kubectl apply -f kubernetes/
```

Check the deployment:

```bash
kubectl get deployments
kubectl get pods
kubectl get services
kubectl get hpa
```

## Monitoring

Prometheus and Grafana are used to monitor the Kubernetes cluster and application workloads.

### Implemented Monitoring Features

- Installed Prometheus and Grafana using Helm.
- Queried Kubernetes metrics through Prometheus.
- Created a Grafana dashboard named **Secure Cloud Infrastructure Monitoring**.
- Configured a Flask CPU Usage panel.
- Configured a Memory Utilization panel.
- Added a Pod Readiness panel to monitor ready pods.
- Added a Pod Health panel to monitor pods in the Running phase.
- Accessed Prometheus and Grafana using Kubernetes port forwarding.

### Alerting

Grafana alert rules have been configured, and validation of the alert-triggering behavior remains in progress.

## Learning Outcomes

- Containerization and application deployment
- Kubernetes resource management
- Automated scaling and workload recovery
- Infrastructure-as-code fundamentals
- Metrics collection and visualization
- Cloud-native troubleshooting
- Git-based project version control

## Future Improvements

- Validate Grafana alert rules by testing their state transitions.
- Document the Terraform deployment and teardown workflow.
- Add screenshots of the monitoring dashboard, autoscaling tests, and Pod recovery.
- Improve deployment security and add automated testing.
- Store monitoring configuration and dashboard exports in Git for reproducibility.

## Author

**Tejashwini Desai**

Cloud Infrastructure | DevOps | AWS | Kubernetes | Terraform | Monitoring
