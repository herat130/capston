dockerpath=heratdhruv/capston
kubectl run development --image=heratdhruv/capston --port=80
kubectl get pods
kubectl port-forward pod/development 8000:80