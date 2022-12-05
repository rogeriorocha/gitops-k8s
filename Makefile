
default: note-begin k8s-argocd-namespace k8s-argocd


note-begin:

	@echo "Make sure you are working with the right Kubernetes cluster???"
	@echo

	@read -r -p "If you are ready to proceed, press enter. Otherwise exit with Ctrl-C. "

k8s-argocd-namespace:
	@clear
	@echo "1. Applying K8s namespace for Argo CD..."
	@echo
	kubectl apply -f ./initialize/namespace-argocd.yaml	
	@echo
	@read -r -p "completed."

k8s-argocd:
	@clear
	@echo "2. Installing Argo CD..."
	@echo
	kubectl apply -f ./app/argo-cd/argo-cd-install.yaml -n argocd
	@echo
	@read -r -p "completed."
