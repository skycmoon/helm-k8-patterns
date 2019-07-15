# fortio 

```bash
helm upgrade --wait --install --force fortio fortio/
```

```bash
FORTIO_POD=$(kubectl get pods -n kube-system | grep fortio | awk '{ print $1 }')
kubectl -n istio-system get service istio-ingressgateway
kubectl exec -n kube-system -it $FORTIO_POD -c fortio /usr/local/bin/fortio -- load -a -c 8 -qps 10 -t 600s -loglevel Warning 172.20.128.75
```