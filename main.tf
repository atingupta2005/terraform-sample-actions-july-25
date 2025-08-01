provider "aws" {
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalancer", "stage-loadbalanacer","prod-loadbalancer"]
}

resource "aws_iam_use" "lb" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system/"
}


resource "aws_iam_use" "lb" {
  name = "atin"
  count = 3
  path = "/system/"
}



output "iam_names" {
  value = aws_iam_user.lb[*].name
}
