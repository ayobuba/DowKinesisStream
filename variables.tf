variable "aws_region" {
  type        = string
  description = "AWS Region."
  default     = "us-east-2"
}

variable "app_name" {
  type        = string
  description = "UpRunningTasks"
  default     = "app"
}

variable "app_instance" {
  type        = string
  description = "Application instance name (ie. honolulu, customer_name, department, etc.)."
  default     = "instance"
}

variable "app_stage" {
  type        = string
  description = "Application stage (ie. dev, prod, qa, etc)."
  default     = "dev"
}

variable "global_tags" {
  type = map(string)

  default = {
    Provisioner = "Terraform"
    Owner       = "shekarau buba"
  }
}

variable "ami" {
  type = string
  description = "Default ami used in the tutorial"
  default = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  type = string
  description = "default instance type"
  default = "t2.micro"
}

variable "http_port" {
  type = number
  description = "http port"
  default = 8080
}
