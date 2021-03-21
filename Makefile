# Makefile
infrastructure:
	terraform -chdir=terraform init
	terraform -chdir=terraform apply

cluster:
	ansible-playbook -i ansible/hosts.cfg ansible/kube-dependencies.yml
	ansible-playbook -i ansible/hosts.cfg ansible/master.yml
	ansible-playbook -i ansible/hosts.cfg ansible/workers.yml

destroy:
	terraform -chdir=terraform destroy
