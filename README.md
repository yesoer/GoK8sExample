Largely based on : https://outcrawl.com/getting-started-microservices-go-grpc-kubernetes but modified/extended and expecting further dervation.

Tools required :
minikube (includes kubectl), docker, protoc

Starting minikube
minikube start

Verify minikube running status
minikube status

Use minikube docker environment
eval $(minikube docker-env)

or under windows
& minikube -p minikube docker-env --shell powershell | Invoke-Expression

Compiling .proto from pb directory
protoc -I . --go-grpc_out=. ./*.proto

Building the dockerfile from root directory
docker build -t local/api -f Dockerfile.api .

Start dockerimage for testing
docker run -p 3000:3000 local/api

Deploy to minikube from root directory
minikube kubectl -- create -f api.yml

Verify pods
kubectl get pods -w

This should give you 3 running gcd pods and one api pod.

Get the URL of the running api service :
minikube service api-service --url

Note : minikube might ask you to leave the terminal open, that's totally fine

And test it by requesting
curl http://192.168.99.100:32602/gcd/294/462