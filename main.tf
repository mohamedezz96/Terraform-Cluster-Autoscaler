module "cluster_autoscaler" {
  source = "github.com/mohamedezz96/Terraform-Modules/EKS-Tools/Cluster-Autoscaler"
  cluster_name = "Testing"
  cluster_autoscaler_version = "9.36.0"
  values_file = "./cluster_autoscaler_values.yaml"
}