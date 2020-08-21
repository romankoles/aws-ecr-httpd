# build a docker image
docker build -t demo .

# login to ECR (change for your region)
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 1234567890.dkr.ecr.us-east-2.amazonaws.com

# tag image (change aws account number)
docker tag demo:latest 1234567890.dkr.ecr.us-east-2.amazonaws.com/demo:latest

# push image
docker push 1234567890.dkr.ecr.us-east-2.amazonaws.com/demo:latest

# pull image
docker pull 1234567890.dkr.ecr.us-east-2.amazonaws.com/demo:latest
