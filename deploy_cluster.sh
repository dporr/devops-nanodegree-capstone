echo "Running cluster creation based on: cluster.yml...\n\n"
echo "Saving output to: cluster_creation.txt"
eksctl create cluster -f cluster.yaml|tee cluster_creation.txt
