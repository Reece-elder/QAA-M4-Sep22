# Services
Services are wrapper objects that contain a Pod, and specify what type of communication to use
- ClusterIP: Internal communication from pod to pod
- LoadBalancer: External communication from pod to open internet

`kubectl apply -f frontend.yaml` - Applies the manifest, meaning make the state equal this