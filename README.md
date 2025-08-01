# Homelab

This repository captures the infrastructure and application stack used to run a small, self‑hosted lab environment. It provides a repeatable way to provision hardware, deploy services, and keep everything up to date through GitOps practices.

## Infrastructure

- **Proxmox via OpenTofu** – OpenTofu (Terraform) configuration describes the Proxmox hypervisor and virtual machines that make up the lab.
- **VMs with k3s** – lightweight Kubernetes distribution used across the virtual machines to host applications.
- **Ansible** – automates initial provisioning and ongoing configuration of hosts and cluster services.
- **Bash health check scripts** – simple scripts for monitoring host resources and service availability.
- **Flux for CI/CD** – GitOps operator that reconciles Kubernetes state from this repository.
- **K8s native proxy** – ingress controller (e.g., Traefik or NGINX) exposes applications securely inside and outside the network.

## Applications

- **Jellyfin** – media server for streaming movies, shows, and music.
- **Jellyseerr** – request management interface for the media library.
- **Wizarr** – invitation and user management portal for Jellyfin.
- **Sonarr** – automates TV show downloads and organization.
- **Radarr** – automates movie downloads and organization.
- **Prowlarr** – indexer aggregator that feeds Sonarr and Radarr.
- **qBittorrent** – torrent client used by the automation suite.

This stack forms a functional homelab capable of running media and automation services with repeatable infrastructure as code.
