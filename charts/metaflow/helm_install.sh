helm dep build
cat aws_eks_values.yaml | envsubst
rm aws_secret.yaml
cat aws_secret_example.yaml | envsubst >>aws_secret.yaml
cat aws_eks_values.yaml | envsubst | helm upgrade --install metaflow . -n $AWS_CLUSTER_NAMESPACE -f - -f aws_secret.yaml
