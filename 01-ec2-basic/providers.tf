# El provider indica a Terraform contra qué API va a trabajar.
# Aquí usamos AWS. La región no está hardcodeada: se toma de una variable
# para poder cambiarla sin tocar el resto del código.
provider "aws" {
  region = var.aws_region

  # default_tags aplica estas etiquetas a todos los recursos del proyecto.
  # Es una buena práctica: facilita identificar qué creó Terraform
  # y a qué laboratorio pertenece.
  default_tags {
    tags = {
      Environment = var.environment
      Project     = var.project_name
      ManagedBy   = "Terraform"
    }
  }
}
