module "frontend" {
  source                 = "https://github.com/rayuduroyal/roboshop.git/terraform-mutable//app-module"
  INSTANCE_TYPE          = var.INSTANCE_TYPE
  ENV                    = var.ENV
  SPOT_INSTANCE_COUNT    = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT      = var.OD_INSTANCE_COUNT
  COMPONENT              = "frontend"
  PORT                   = 80
  IS_PRIVATE_IB          = false
  LB_RULE_PRIORITY       = 102
}

output "INSTANCE_IDS" {
  value = module.frontend.INSTANCE_IDS
}