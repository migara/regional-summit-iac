locals {
  config = yamldecode(file("./env/${terraform.workspace}/config.yml"))
}

resource "aws_vpc" "this" {
  cidr_block = config.cidr_block
  tags       = merge(var.tags, config.tags)
}