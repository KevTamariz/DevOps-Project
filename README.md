# DevOps Project

In this project, i want to implement a professional DevOps Project, from the automatization of the IaC, and finishing with the implementation of observability tools like Prometheus and Grafana

Not forgetting the implementation of GitOps in this project with tools like ArgoCD


# Infra - Terraform
- Resources:
  - API's
    - Compute
    - Kubernetes
    - DNS
    - Secrets
    - Cloud SLQ
  - VPC (Default)
    - Subnet (Default)
  - Cluster
    - 3 Nodes
  - Databse MySQL
  - DNS Zone
    - DNS Records
      - argo.ktamariz.gq
      - app.ktamariz.gq
      - dash.ktamariz.gq
      - monitor.ktamariz.gq
  ![W9-Diagram](https://user-images.githubusercontent.com/92232117/235319247-fab0ba31-193c-4947-9814-4f2d9c20d4df.png)
    
      
# Kubernetes
- Argo CD:
    - My app
    - Prometheus-Stack
      - Blackbox exporter
    - Skooner
    - KEDA
    - Example HPA
    - External Secrets
