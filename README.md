# Cloud & Virtualization project

This repository will contain:
 - all the codes of ansible
 - all the codes of packers
 - all the codes of terraform
 
 
In this project, we will deploy a WordPress website (which is loaded on another Scaleway Server) on our own server.
Our main goal is to deploy a content located in a specific server to another server created by us.

To do this, we will:
  1. Create a server on Scaleway with Terraform
  2. Test if we can connect to the server by pinging it with Ansible
  3. Then, we will create a playbook (a list of instructions to apply on the created server) that will display the WordPress website on the server created
  4. We will then create an image with Packer that will allow people to deploy our WordPress website from their own computer
  
 We will be two doing this project: Robin GUEUX & Cyril TSO

Project Check-in:

- Tuesday 20/11: Created our cloud server with Terraform, pinged it with Ansible to check if it works (and it works!), starting to work on the Ansible's Playbook to deploy the WordPress
