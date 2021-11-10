# Covid-tracker

link below

https://covid-tracker-73ebd.web.app/

cd Covid-tracker

npm i

npm start

npm build

----------------------------------------------------------

# K8s deployment

az login

az account set --subscription <subscription id>

az aks get-credentials --resource-group <resource group name>--name <kubernetes service name>

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.35.0/deploy/static/provider/cloud/deploy.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.35.0/deploy/static/provider/cloud/deploy.yaml

helm repo update

helm install nginx-install-kube nginx-stable/nginx-ingress

helm install <some name for your app> .

helm ls - To show the installed charts.

kubectl get ingress
