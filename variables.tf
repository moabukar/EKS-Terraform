variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
  default = [
    {
      rolearn  = "arn:aws:iam::<AWSACCOUNTIDHERE>:role/ROLETYPEHERE"
      username = "admin"
      groups   = ["system:masters"]
    }
  ]
}


