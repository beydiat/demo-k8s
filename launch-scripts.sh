# Creation of mongodb, mongo-express
kubectl apply -f mongo/mongo-secret.yaml
kubectl apply -f mongo/mongo.yaml
kubectl apply -f mongo/mongo-configmap.yaml
kubectl apply -f mongo/mongo-express.yaml
# Enabling ingress on minikube
minikube addons enable ingress
# Excposition of mongo-express service
kubectl expose deployment mongo-express --type=NodePort --port=8081
minikube service mongo-express --url