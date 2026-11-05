terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }

    # random genera un sufijo único para el nombre del bucket.
    # Los nombres de S3 son globales: dos alumnos no pueden usar el mismo.
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}
