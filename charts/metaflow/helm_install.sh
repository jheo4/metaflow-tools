helm dep build
cat aws_eks_values.yaml | envsubst
cat aws_eks_values.yaml | envsubst | helm upgrade --install metaflow . -n $AWS_EKS_NAMESPACE -f -
