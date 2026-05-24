# init namespace
kubectl create namespace cubix-cn

# install/upgrade the JVM deployment type
#helm upgrade spring-cubix-cn spring-cubix-cn --install --namespace cubix-cn --values jvm.yaml
# install/upgrade the native deployment type
#helm upgrade spring-cubix-cn spring-cubix-cn --install --namespace cubix-cn --values native.yaml
helm upgrade appa spring-cubix-cn --install --namespace cubix-cn --values native.yaml

# create secret for API key
kubectl create secret generic hw6secret --from-literal api-key=c7e9de1e93637eb6157e3ab03698169e0fe392b17204dc42c12c2c55aa607819 --namespace cubix-cn --save-config

# uninstall the helm chart
helm uninstall appa --namespace cubix-cn

# delete namespace
kubectl delete namespace cubix-cn
