# Pods
Pods are the object in K8s that contain our containers. 
A node can contain any number of pods (restricted by size of node)

We create a manifest (stating our environment), pass it into kubectl
kubectl talks to the control plane and tells the cluster what containers we need 

Manifests are written in yaml (yml) and are similar to Docker Compose

`touch nginx-pod.yaml`
`kubectl create -f nginx-pod.yaml`
`create` used to create the resources in this manifet
`-f` used to declare the file you are running  

`kubectl get pods` - Get a list of all pods running
`kubectl describe pod <name of pod>` - Gives you info on the pod
`kubectl delete pod nginx-pod` - delete the pod of this name

`kubectl exec -it <name of pod> -- sh`
`exec` - Logging into a pod
`-it`  - Interactive terminal
`sh`   - shell 

`mysql -u root -p` enter your password after