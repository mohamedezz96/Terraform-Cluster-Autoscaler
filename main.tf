module "cluster_autoscaler" {
  source = "github.com/mohamedezz96/Terraform-Modules/EKS-Tools/Cluster-AutoScaler"
  cluster_name = var.cluster_name
  eks_issuer = data.aws_eks_cluster.eks_data.identity[0].oidc[0].issuer
  cluster_autoscaler_version = "9.36.0"
  values_file = "./cluster_autoscaler_values.yaml"
}