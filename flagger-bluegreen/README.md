# flagger-bluegreen 

###Install / Upgrade
```bash
helm upgrade --wait --install --force --reuse-values --set version=v0.1.0 flagger-bluegreen flagger-bluegreen/
helm upgrade --wait --install --force --reuse-values --set version=v0.2.0 flagger-bluegreen flagger-bluegreen/
```

###Check logs
```bash
kubectl -n istio-system logs deployment/flagger -f | jq .msg
```

###Check virtual service statuses
```bash
kubectl get virtualservices -n bluegreen -o yaml
```