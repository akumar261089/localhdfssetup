# Local HDFS Setup
Running HDFS name node and data node on your virtual machine

## Prerequisite
Setup SSH user name and password or ssh keypar to login to your virtual machine and then execute 
<code> sudo apt update</code>
  
<code> sudo apt install openssh-server </code>

<code> sudo systemctl status ssh</code>

## Once done Start script from local machine

<code> sh start.sh VM_IP VM_USERNAME</code>

example

<code> sh start.sh 31.171.244.132 ubuntu</code>
