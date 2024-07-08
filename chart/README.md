# helm-monitorie

This is repository for HELM chart.
The helm-monitorie can be used for creating observability stack.

### usage

```
helm repo add helm-monitorie https://lukas-pastva.github.io/helm-monitorie/
helm repo update
```

### links

- https://artifacthub.io/control-panel/repositories?page=1


### Provisioning of users
- There is a functionality of creating custom users for grafana (built in grafana DB)
- It is required to create secret manually, as of now there is no vault integration
- `echo -n '[{"name": "admin", "email": "admin@example.com", "password": "password", "role": "admin"}, {"name": "viewer", "email": "viewer@example.com", "password": "password", "role": "viewer"}]' | base64 -w 0`
-
```yaml
apiVersion: v1
kind: Secret
metadata:
  name: grafana-users-secret
  namespace: TODO
type: Opaque
data:
  GRAFANA_USERS: |
    TODO
```
- after this secret exists, the user will be automatically created via init containers

