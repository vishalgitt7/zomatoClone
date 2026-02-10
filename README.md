# DevOps Project: Zomato Clone App Deployment

A hands-on **DevOps deployment project** showcasing how to build, containerize, test, and deploy the **Zomato Clone App** using modern DevOps tools and workflows such as **GitHub Actions, Docker, Kubernetes, Monitoring, CI/CD, and Security Scanning**. 

---

## 🚀 Features

✔ Full CI/CD pipeline using **GitHub Actions**
✔ Containerization with **Docker**
✔ Kubernetes deployment in a cluster
✔ Security scanning (Trivy, OWASP)
✔ Code quality analysis (SonarQube)
✔ Monitoring & visualization (Prometheus, Grafana)
✔ GitOps deployment (ArgoCD) 

---

## 🧰 Tools & Technologies

Your project uses the following technologies: ([GitHub][1])

| Category         | Tools / Services    |               
| ---------------- | ------------------- | 
| Version Control  | GitHub              |               
| CI/CD            | GitHub Actions      |               
| Containerization | Docker              |               
| Orchestration    | Kubernetes          |               
| Monitoring       | Prometheus, Grafana |               
| GitOps           | ArgoCD              |               
| Security         | OWASP, Trivy        |               
| Code Quality     | SonarQube           | 

---

## 📁 Repository Structure

```
.github/workflows/   → GitHub Actions CI/CD workflows  
Kubernetes/         → Kubernetes manifests  
public/             → Static web assets  
src/                → Application source code  
Dockerfile          → Docker container config  
package.json        → Project dependencies  
README.md           → Project documentation  
```

## 🛠️ Prerequisites

Before running locally, make sure you have:

* Git
* Node.js & npm
* Docker
* (Optional) Kubernetes cluster (minikube / cloud provider)
* (Optional) SonarQube server for code analysis

---

## 🏃‍♂️ Quick Start

### 1️⃣ Clone the Repository

```sh
git clone https://github.com/vishalgitt7/zomatoClone.git
cd zomatoClone
```

### 2️⃣ Install Dependencies

```sh
npm install
```

### 3️⃣ Build & Serve

To build and start the app locally:

```sh
npm start
```

This should run your app on `http://localhost:3000` (or as configured).

---

## 🧪 Containerization (Docker)

### Build Docker Image

```sh
docker build -t zomato-clone .
```

### Run Container

```sh
docker run -p 8080:8080 zomato-clone
```

Now open `http://localhost:8080` in your browser.

---

## ⚙️ Deploy to Kubernetes

1. Apply deployment & service manifests:

```sh
kubectl apply -f Kubernetes/
```

2. Verify pods:

```sh
kubectl get pods
```

3. Expose service (if needed):

```sh
kubectl expose deployment zomato-clone --type=LoadBalancer --port=80
```

---

## 📈 CI/CD — GitHub Actions

This project uses GitHub Actions workflows to automate:

✔ Dependency install
✔ Docker build
✔ Security scans
✔ Deployment to Kubernetes

Workflows can be found under:

```
.github/workflows/
```

Modify these workflows to suit your branch strategies and deployment environments. ([GitHub][1])

---

## 📊 Monitoring & Security

This setup includes support for:

* **Prometheus** – Metrics scraping
* **Grafana** – Dashboard visualization
* **Trivy / OWASP** – Container & file system vulnerability scanning
* **SonarQube** – Static code analysis

Add your credentials as GitHub Secrets to enable scanning and reporting as part of your CI pipeline.

---

## 🤝 Contributing

Your contributions are welcome! To contribute:

1. Fork this repo
2. Create a branch (`git checkout -b feature/YourFeature`)
3. Commit your changes
4. Push and create a Pull Request

---

## ⭐ Sponsor & Support

If this project helped you learn DevOps workflows, consider giving it a star ⭐! 



---

If you want, I can customize this further (e.g., add badges, GitHub Actions diagrams, or deploy screenshots). Just tell me!

[1]: https://github.com/vishalgitt7/zomatoClone/tree/git-actions "GitHub - vishalgitt7/zomatoClone at git-actions"
