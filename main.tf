locals {
  config = yamldecode(file("./env/${terraform.workspace}/config.yml"))
}


resource "aws_vpc" "shared" {
  cidr_block = "172.16.0.0/16"
  tags       = { Name = "${terraform.workspace} Shared VPC"}
}

# resource "aws_vpc" "this" {
#   cidr_block = local.config.cidr_block
#   tags       = merge(var.tags, local.config.tags, { Name = "${local.config.prefix} VPC"})
# }