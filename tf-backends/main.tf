provider "azurerm" {
  features {}

  subscription_id = "771cd5c1-6b02-4169-a5cc-dc344f0e8941"
}

module "dev_backend" {
  source = "./modules/backend"
  environment = "dev"
}

module "test_backend" {
  source = "./modules/backend"
  environment = "test"
}

module "prod_backend" {
  source = "./modules/backend"
  environment = "prod"
}
