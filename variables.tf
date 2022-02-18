variable branch {
  type        = string
  description = "describe your variable"
  default     = "init"
}

variable owner {
  type        = string
  description = "describe your variable"
  default     = "devops100"
}

variable repository {
  type        = string
  description = "describe your variable"
  default     = "sak-kubeflow"
}

variable aws_region {
  description = "Name the aws region (us-central-1, us-west-2 and etc.)"
  default     = "eu-central-1"
}

# Name of EKS cluster (Not use underscore in naming. S3 backet name issue)
variable cluster_name {
  description = "Name of cluster"
  default     = "devops10020220218"
}

variable availability_zones {
  type        = list(string)
  description = "List of use avilability_zones"
  default     = ["eu-central-1a", "eu-central-1b","eu-central-1c"]
}

#Deploy environment name
variable environment {
  type        = string
  description = "Environment Use in tags and annotations for identify EKS cluster"
  default     = "test1"
}

#Deploy project name
variable project {
  type        = string
  description = "Project Use in tags and annotations for identify EKS cluster"
  default     = "Kubeflow"
}

variable aws_private {
  type        = string
  description = "Use private zone or public"
  default     = "false"
}

variable mainzoneid {
  type        = string
  description = "ID of main route53 zone if exist"
  default     = "Z0552891G294KXTRE1DR"
}

variable domains {
  description = "Domains name for ingress"
  type        = list(string)
  default     = ["sak.devops100.com"]
}

variable admin_arns {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}

variable cert_manager_email {
  type    = string
  default = "pcommerce@xessam.net"
}


variable cognito_users {
  type    = list(map(string))
  default = []
}

variable argo_path_prefix {
  type    = string
  default = ""
}

variable argo_apps_dir {
  type    = string
  default = "apps"
}
