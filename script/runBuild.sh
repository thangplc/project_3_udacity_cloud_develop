kubectl get deployments
kubectl expose deployment frontend --type=LoadBalancer --name=publicfrontend
kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy
kubectl autoscale deployment backend-user --cpu-percent=70 --min=3 --max=5
kubectl autoscale deployment backend-feed --cpu-percent=70 --min=3 --max=5
kubectl autoscale deployment frontend --cpu-percent=70 --min=3 --max=5
kubectl autoscale deployment reverseproxy --cpu-percent=70 --min=3 --max=5


kubectl delete deployment udagram-api-user
kubectl delete services udagram-api-user
kubectl delete deployment udagram-api-feed
kubectl delete services udagram-api-feed
kubectl delete services udagram-reverseproxy
kubectl delete services publicreverseproxy


kubectl apply -f secrets
kubectl apply -f deployments/deployment-api-feed.yaml
kubectl apply -f services/service-api-feed.yaml
kubectl apply -f deployments/deployment-api-user.yaml
kubectl apply -f services/service-api-user.yaml
kubectl apply -f deployments/deployment-reverseproxy.yaml
kubectl apply -f services/service-reverseproxy.yaml