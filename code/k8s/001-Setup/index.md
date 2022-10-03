`sudo apt update`
`sudo apt install awscli -y`
`aws configure`
DO NOT PUSH YOUR ACCESS OR SECRET KEY UP TO GITHUB IN ANYWAY SHAPE OR FORM 
region - (London) eu-west-2
output format - blank (press enter)

`aws iam get-user` - Return the current IAM Account you are logged in as, sanity testing to check its setup

# Installing kubectl (software for controlling our cluster)

```bash
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.22.6/2022-03-09/bin/linux/amd64/kubectl

chmod +x ./kubectl

mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin

echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc

kubectl version --short --client
```

# Configuring our kubectl to work with our cluster 

`aws eks update-kubeconfig --region eu-west-2 --name <name of cluster>`
`kubectl get svc` - if you get kubernetes ClusterIP <IP>.. GR8 :D