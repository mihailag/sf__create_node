[masters]
master ansible_host=${master_ip}

[workers]
worker ansible_host=${worker_ip}

[all:vars]
ansible_user=ubuntu
ansible_python_interpreter=/usr/bin/python3