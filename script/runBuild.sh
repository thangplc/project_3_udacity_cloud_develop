kubectl get deployments
kubectl expose deployment frontend --type=LoadBalancer --name=publicfrontend
kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy
kubectl autoscale deployment backend-user --cpu-percent=70 --min=3 --max=5
kubectl autoscale deployment backend-feed --cpu-percent=70 --min=3 --max=5
kubectl autoscale deployment frontend --cpu-percent=70 --min=3 --max=5
kubectl autoscale deployment reverseproxy --cpu-percent=70 --min=3 --max=5