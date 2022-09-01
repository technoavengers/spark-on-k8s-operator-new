
sudo systemctl start docker
minikube start

cd ~

############################ Step1: Install Helm #####################

curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh


############################ Step1: Add Helm Repo #####################
helm repo add spark-operator https://googlecloudplatform.github.io/spark-on-k8s-operator

helm install my-release spark-operator/spark-operator --namespace spark-operator --create-namespace

kubectl apply -f ~/spark-on-k8s-operator/manifest/spark-application-rbac/spark-application-rbac.yaml 