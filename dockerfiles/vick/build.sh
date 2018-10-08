kubectl delete -f ../../kubernetes/sp-deployment.yaml
cp -rf widgets/*/dist/* dashboard/files/widgets
cd dashboard
docker build -t vick-wso2sp-dashboard:4.3.0 .
cd ../worker
docker build -t vick-wso2sp-worker:4.3.0 .
kubectl apply -f ../../../kubernetes/sp-deployment.yaml