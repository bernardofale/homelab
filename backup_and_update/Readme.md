#### Backing up and updating nextcloud services workflow

## Terraform - Create R2 bucket

cd ../create_backup_R2bucket/

terraform init

terraform apply -var-file=".tfvars"

#### Ansible

### generate keys for automated ssh login

ssh-keygen

ssh-copy-id ~/.ssh/id_rsa bernardo@192.168.1.117

### Test ./inventory.ini hosts

ansible myhosts -m ping -i inventory.ini

## Backing up to R2 cloudflare storage bucket instance

# Install and configure rclone + backup

cd ../backup_and_update/

ansible-galaxy install stefangweichinger.ansible_rclone

ansible-playbook -i inventory.ini playbook.yaml

## Updating nextcloud services

--todo
