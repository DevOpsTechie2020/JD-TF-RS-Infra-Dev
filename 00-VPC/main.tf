module "vpc" {
  source = "git::https://github.com/DevOpsTechie2020/JD-Terraform-Modules.git//AWS-VPC?ref=main"
  project = "roboshop"
  environment = "dev"
  is_peering_required = true
}