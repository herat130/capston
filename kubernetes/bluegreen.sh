
echo "starting k8 blue/green deployment";
DEPLOYED_VERSION=$(kubectl describe service/capston-serv | grep 'version' | cut -d "=" -f3)
echo "current version $1 / previoius version $DEPLOYED_VERSION"

echo "-----deployment---------"
sed -e "s/VERSION/$1/g" react-deployment.yml | kubectl apply -f -

echo "-----Health check---------"
ROLLOUT_STATUS=$(kubectl rollout status deployment/capston-depl-$1)

if echo $ROLLOUT_STATUS | grep -q "successfully"; then
    echo "success @@@@@@@@@"
    echo "-----Service migration and deleting old resources---------"
    sed -e "s/VERSION/$1/g" react-service.yml | kubectl apply -f -    
    kubectl delete deployment capston-depl-$DEPLOYED_VERSION    
else
    echo "Failed to deploy "
    exit 0;
fi
# # deployment "capston-depl-blue" successfully rolled out

kubectl get all
