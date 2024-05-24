# helm-monitorie

This is repository for HELM chart.
The helm-monitorie can be used for creating observability stack.

### usage

```
helm repo add helm-monitorie https://lukas-pastva.github.io/helm-monitorie/
helm repo update
```

# links

- https://artifacthub.io/control-panel/repositories?page=1

### localhost testing
```bash

helm install helm-monitorie /Users/psw/Desktop/git.lukas-pastva/helm-monitorie/chart \
  --set secrets.type=helm \
  --set mail.username=aaa \
  --set thanos.grafanaAdminPassword=aaa \
  --set grafana.dashboards.nodeExporterEnabled="true" \
  --set grafana.dashboards.rempEnabled="default" \
  --debug --dry-run

```