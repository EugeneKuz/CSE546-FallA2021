sudo docker build -t hello-world-student .   
sudo aws ecr get-login-password --region us-west-2 | sudo docker login --username AWS --password-stdin 423840444982.dkr.ecr.us-west-2.amazonaws.com    
sudo aws ecr create-repository --repository-name hello-world-student --image-scanning-configuration scanOnPush=true --image-tag-mutability MUTABLE
sudo docker tag hello-world-student:latest 423840444982.dkr.ecr.us-west-2.amazonaws.com/hello-world-student:latest
sudo docker push 423840444982.dkr.ecr.us-west-2.amazonaws.com/hello-world-student:latest  

