#!/bin/sh

USER=vagrant
PASSWORD=vagrant

# add addresses to /etc/hosts
#sed -i '/192.168.56/d' /etc/hosts
grep -v 192.168.56 /etc/hosts > /tmp/h && cat /tmp/h > /etc/hosts
echo "192.168.56.101 web.com" | sudo tee -a /etc/hosts
echo "192.168.56.102 db.com" | sudo tee -a /etc/hosts
echo "192.168.56.103 docker.com" | sudo tee -a /etc/hosts
echo "192.168.56.104 gitlab.com" | sudo tee -a /etc/hosts
#echo " " | sudo tee -a /etc/ansible/hosts
echo "" > /etc/ansible/hosts
echo 127.0.0.1	localhost
echo "[all]" | sudo tee -a /etc/ansible/hosts
echo "web.com 	ansible_ssh_private_key_file=/vagrant/.vagrant/machines/web/virtualbox/private_key"| sudo tee -a /etc/ansible/hosts
echo "db.com 	ansible_ssh_private_key_file=/vagrant/.vagrant/machines/db/virtualbox/private_key" | sudo tee -a /etc/ansible/hosts
echo "docker.com 	ansible_ssh_private_key_file=/vagrant/.vagrant/machines/docker/virtualbox/private_key" | sudo tee -a /etc/ansible/hosts
echo "gitlab.com 	ansible_ssh_private_key_file=/vagrant/.vagrant/machines/gitlab/virtualbox/private_key" | sudo tee -a /etc/ansible/hosts
#ansible-playbook /home/vagrant/playbooks/install-docker.yaml
#ansible-playbook /home/vagrant/playbooks/install-web.yaml
#ansible-playbook /home/vagrant/playbooks/install-jenkins.yaml
ansible-playbook /home/vagrant/playbooks/install-gitlab.yaml
