module "sg" {
  count = length(var.sg_names)
  source = "git::https://github.com/DevOpsTechie2020/JD-Terraform-Modules.git//AWS-SG?ref=main"
  project = var.project
  environment = var.environment
  sg_name = replace (var.sg_names[count.index], "_", "-")
  vpc_id = local.vpc_id
}