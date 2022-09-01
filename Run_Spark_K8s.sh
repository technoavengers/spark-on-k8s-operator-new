kubectl apply -f ~/spark-on-k8s-operator-new/examples/spark-pi.yaml

kubectl describe sparkapplication spark-pi -n spark

kubectl get pod -n spark -w