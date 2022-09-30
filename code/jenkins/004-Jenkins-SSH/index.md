# Jenkins SSH

Jenkins will be sshing from its own node into the Build EC2, to prevent coupling and allow easy changing of build tool and make the build process easily scalable

We need to login as Jenkins, and enable SSH from the jenkins user to the build EC2

`sudo su jenkins`
`ssh-keygen`
`cd /var/lib/jenkins/ssh`
`cat id_rsa.pub`
Copy the public key and we need to upload it to AWS for it to put on our new machine 
AWS > EC2 Portal > Network and Security > Key Pairs > import key pair (paste in the public key)
Create our EC2 using this pasted in public key
`ssh ubuntu@<public ip>`