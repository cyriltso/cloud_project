# Cloud & Virtualization project

## Introduction

This repository will contain:
 - all the codes of ansible
 - all the codes of packers
 - all the codes of terraform
 
In this project, we will deploy a WordPress website (which is loaded on another Scaleway Server) on our own server.
Our main goal is to deploy a content located in a specific server to another server created by us.

To do this, we will:
  1. Create a server on Scaleway with Terraform
  2. Test if we can connect to the server by pinging it with Ansible
  3. Then, we will create a playbook (a list of instructions to apply on the created server) that will display the WordPress website on the server created to test first
  4. We will then create an image with Packer that will allow people to deploy WordPress website from their own computer
  
 We will be two doing this project: Robin GUEUX & Cyril TSO

## Project Check-in:

- Tuesday 20/11: Created our cloud server with Terraform, pinged it with Ansible to check if it works, starting to work on the Ansible's Playbook to deploy the WordPress

- Friday-Sunday 23-25/11: Created the content to deploy (WordPress) to make some tests with the Ansible Playbook, strongly inspired from this tutorial: https://www.digitalocean.com/community/tutorials/how-to-automate-installing-wordpress-on-ubuntu-14-04-using-ansible

- Monday-Tuesday 26-27/11: Created and finalized the JSON file used to create the image of the WordPress deployment with Packer

## Commands to launch Terraform, Ansible and Packer

#### Terraform:

- cd cloud_project
- terraform init
- terraform plan
- terraform apply

#### Ansible:

- cd cloud-project/ansible/ (as the playbook apache.yml is located in the file "Ansible")
- ansible-playbook -i hosts -l host.example.org apache.yml

#### Packer:

- cd cloud-project/ansible/ (as the playbook apache.yml is located in the file "Ansible")
- packer build -var "api_access_key=$SCW_ACCESS_KEY" -var "api_token=$SCW_SECRET_KEY" image-wordpress.json
