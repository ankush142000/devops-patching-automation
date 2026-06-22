# Linux Backup & Patching Automation

This project automates:
- Backup of critical files before patching
- Patching workflow using Ansible
- CI/CD pipeline integration with GitHub Actions

## Workflow
1. Inventory file updated with server details
2. Backup task runs → tarball stored in NFS path
3. Patching task executes
4. Logs + backups available for rollback

## Tech Stack
- Linux (RHEL/CentOS/Ubuntu)
- Ansible
- GitHub Actions
- NFS (used only as backup storage path)

## Usage
- Update `ansible/inventory/hosts.ini` with server details
- Run `ansible-playbook ansible/site.yml -i ansible/inventory/hosts.ini`
- Backups will be stored in `/mnt/nfs_share/backups`
