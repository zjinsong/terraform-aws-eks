variable "region" {
  default = "cn-northwest-1"
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = [
    "326449571384",
     ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = "arn:aws-cn:iam::326449571384:role/admin"
      username = "admin"
      groups   = ["system:masters"]
    },
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws-cn:iam::326449571384:user/jinsong1"
      username = "jinsong1"
      groups   = ["system:masters"]
    },
    ]
}
