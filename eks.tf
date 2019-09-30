module eks {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  vpc_id       = "vpc-a03073d8"
  subnets      = ["subnet-01b6ca4a", "subnet-54ed9330"]
  worker_groups = [
    {
      instance_type = "t3.small"
      asg_max_size  = 2
    }
  ]

  tags = {
    environment = "test"
  }
}

resource "null_resource" "kubectl-apply" {
  provisioner "local-exec" {
    command = "kubectl apply --kubeconfig=./kubeconfig_technical-test -f ../../../k8s/"
  }
  depends_on = ["module.eks"]
}
