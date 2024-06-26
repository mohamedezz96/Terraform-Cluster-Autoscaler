provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.eks_data.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks_data.certificate_authority[0].data)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", var.cluster_name]
      command     = "aws"
    }
  }
}