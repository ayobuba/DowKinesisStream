provider "aws" {
  region = var.aws_region
}

data "aws_vpc" "default" {
  default = true
}
data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}

resource "aws_kinesis_stream" "ExampleInputStream" {
  name = "ExampleInputStream"
  shard_count = 1
}

resource "aws_kinesis_stream" "ExampleOutputStream" {
  name = "ExampleOutputStream"
  shard_count = 1
}