# Controller
Controllers monitor and regulate the state of an environment, checking the number and health of the pods.
Controllers can be setup to allow rollout deployment, letting us update our pods on the fly

Two main types of controllers:
ReplicaSets - Take in an image and attempt to keep a set number of pods of that image
Deployments - Do all same commands as ReplicaSets but also allow RollingUpdates 