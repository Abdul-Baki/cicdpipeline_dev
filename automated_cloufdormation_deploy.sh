#!/bin/bash

# Need to update this and make it parameterised and then provide args via bash cmdline
# aws cloudformation create-stack --stack-name awscli-test1 --template-body file:////vagrant//tomcat8-ha-v034a.template.json

pip install boto3

# make sure the credentials are set up, if not then configure
#https://boto3.readthedocs.io/en/latest/guide/quickstart.html#configuration

cd /home/vagrant

# run the python script

python /vagrant/aws_cloudformation_automation.py


