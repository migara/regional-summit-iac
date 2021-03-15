locals {
  config = yamldecode(file("./env/${terraform.workspace}/config.yml"))
}

resource "aws_vpc" "this" {
  cidr_block = local.config.cidr_block
  tags       = merge(var.tags, local.config.tags, { Name = "${local.config.prefix} VPC"})
}