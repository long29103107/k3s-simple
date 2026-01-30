"# k3s-simple" 
```
helm install hello-k3s ./helm/hello-k3s -n hello
helm list -n hello
kubectl get pods -n hello
kubectl delete pod -n hello --all
kubectl delete namespace hello
kubectl create namespace hello

kubectl rollout restart deployment hello-k3s -n hello
helm upgrade hello-k3s ./helm/hello-k3s -n hello
```