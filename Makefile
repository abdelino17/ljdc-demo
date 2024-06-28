auth:
# authenticate to GCP
	gcloud auth login
	gcloud config set project ljdc2024

storage:
	gcloud services enable storage.googleapis.com

compute:
	gcloud services enable compute.googleapis.com

ar:
	gcloud artifacts repositories create docker-repo --repository-format=docker --location=us-central1 --description="Docker repository"

init:
	tf init

plan:
	terraform plan -var-file=./stages/dev/variables.tfvars 
	
apply:
	terraform apply -var-file=./stages/dev/variables.tfvars --auto-approve

destroy:
	terraform destroy -var-file=./stages/dev/variables.tfvars 

migrate:
	terraform init --migrate-state --backend-config=./stages/dev/backend.hcl --var-file=./stages/dev/variables.tfvars 

logs:
	sudo journalctl -u google-startup-scripts.service -f