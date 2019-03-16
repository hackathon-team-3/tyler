
# Terraform Enterprise

## Access to TFE for Hackathon Project

* Register for TFE access - https://releases.hashicorp.com/terraform/. 
* You will be added to the organization `hackathon-team3`.
* Roger can create workspaces for you (some will be pre-created) - the workspaces include the GCP credentials.
* The `hackathon-team` organization in TFE is tied to this GitHub organization.

## TFE workspaces 

* Documentation - https://www.terraform.io/docs/enterprise/workspaces/creating.html
* Roger can create more workspaces tied to specific repos/working directories
* Roger will also create a workspaces that are not tied to any repo so that you can configure your own.

## Instructions on configuring repo to workspace

* Under workspace `settings` and `vcs` to configure VCS and `REPOSITORY`
* Under workspace `settings` and `general` to configure `TERRAFORM WORKING DIRECTORY`
* Upload TF code to repo and you're ready to go

## Remote Plan and Apply

* I think I need to get an TFE API key so likely won't work at the moment for you. looking into it...
