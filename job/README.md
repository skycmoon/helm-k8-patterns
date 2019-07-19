# job 

```bash
helm upgrade --wait --install --force --reuse-values --set version=v0.1.0 job job/
```

###Job execution details
```bash
kubectl describe jobs/job
kubectl -n kube-system logs jobs/job
```