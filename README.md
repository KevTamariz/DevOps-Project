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
![image](https://user-images.githubusercontent.com/92232117/236646064-f82365db-9b45-428e-88e3-ebe206a28e50.png)

          
# Kubernetes
- Argo CD:
    - My app
    - Prometheus-Stack
      - Blackbox exporter
    - Skooner
    - KEDA
    - Example HPA
    - External Secrets

![image](https://user-images.githubusercontent.com/92232117/236646074-f8b2cb9c-3862-4359-a8bc-10d0981103bf.png)
