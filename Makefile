run.minikube:
	minikube start --cpus=6 --memory 8192 --disk-size 40g --driver=docker

run.pods:
	skaffold run

stop.pods:
	skaffold delete

reload.promtail:
	kubectl apply -f .\kubernetes-manifests\promtail.yaml
	kubectl rollout restart daemonset/promtail

