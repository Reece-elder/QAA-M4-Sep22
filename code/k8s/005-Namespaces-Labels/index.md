# Labels

labels are key value pairs that are associated with our resources. 
Any resources that require 'connection' to another can be associated by selecting the label of the chosen resource 

```yaml
kind: Service
metadata: 
  name: loadbalancer
spec:
  type: LoadBalancer
  # Selector lets us associate resources
  selector: 
    # matchLabels takes in a key value pair for use with selector
    matchLabels:
      # the key value pair we are searching for 
      key: value

kind: Pod
metadata:
  name: pod
  labels:
    key: value
```

`kubectl get pods -l key=value` - Will search in the default namespace for all pods with that label 

# Namespaces 
Namespaces are ways of creating 'sub clusters' within a cluster
The majority of resources (services, pods, deployments) are associated with a namespace, this is the 'group' they belong to
`kubectl get ns` - Shows us all available namespaces
`kubectl get pods -n <namespace name>` - Show you all pods in that namespace

The only reason you'd use namespaces in a cluster is to separate out projects OR separate out dev environments if multiple people are using the cluster 

When deleting a namespace, all resources assigned to that namespace are also deleted 
`kubectl delete ns dev-ns`