# Jenkins

Jenkins is an open source CI (Continious Integration) and CD (Continious Delivery / Deployment) framework used for Building, Testing, Delivering and Deploying our code. 

It can work with our Version Control System to run a set of tasks when a pull / push / merge 

Jenkins is powered by Java, and the IaC (infrastructure as code) (tasks) are written in Groovy (subset of Java)

Guide - https://www.jenkins.io/doc/book/installing/linux/#debianubuntu
```bash
sudo apt update
sudo apt install openjdk-11-jre
java --version

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
jenkins --version 
```

Access Jenkins GUI by going to your browser, entering the public ip:8080

Access our Jenkins Password 
`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`

Install suggested plugins
