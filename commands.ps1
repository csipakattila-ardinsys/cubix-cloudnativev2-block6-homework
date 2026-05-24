# init namespace
kubectl create namespace cubix-cn

# install/upgrade the JVM deployment type
#helm upgrade spring-cubix-cn spring-cubix-cn --install --namespace cubix-cn --values jvm.yaml
# install/upgrade the native deployment type
#helm upgrade spring-cubix-cn spring-cubix-cn --install --namespace cubix-cn --values native.yaml
helm upgrade appa spring-cubix-cn --install --namespace cubix-cn --values native.yaml
# uninstall the helm chart
helm uninstall appa --namespace cubix-cn

# delete namespace
kubectl delete namespace cubix-cn
