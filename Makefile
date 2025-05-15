run.minikube:
	minikube start --cpus=4 --memory 4096 --disk-size 32g --driver=docker

run.pods:
	skaffold run

stop.pods:
	skaffold delete

reload.promtail:
	kubectl apply -f promtail-config.yaml; kubectl rollout restart daemonset/promtail

