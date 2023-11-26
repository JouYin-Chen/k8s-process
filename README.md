# k8s-process

# 工具

- Github actions
- Kustomize
- Skaffold
- ArgoCD

# Git Repo

- [application repo](https://github.com/JouYin-Chen/k8s-process)
  - 包含 source code, Dockerfile
- [manifest repo](https://github.com/JouYin-Chen/k8s-process-manifest)
  - 包含 k8s manifest

# Flow

1. code push to application repo
2. CICD by GitHub action
   - build image
   - push image & render k8s manifest
   - pull manifest repo
   - push manifest.yaml & commit to manifest repo
3. argoCD poll manifest repo
4. argoCD sync GKE

# 流程圖

![flow](image.png)

# ArgoCD

![dashboard](image-1.png)

# k8s pods

![k8s-pods](image-2.png)
