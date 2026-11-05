# El bloque terraform declara requisitos del propio Terraform.
# Debe existir en todo proyecto: fija la versión mínima de Terraform
# y los providers que se van a descargar con `terraform init`.
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
