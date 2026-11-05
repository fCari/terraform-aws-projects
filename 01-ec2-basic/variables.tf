# Las variables hacen el código reutilizable.
# En lugar de escribir valores fijos (región, tipo de instancia, etc.),
# los declaramos aquí y el alumno puede cambiarlos en terraform.tfvars.

variable "aws_region" {
  description = "Región de AWS donde se desplegará la instancia. us-east-1 es Norte de Virginia."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nombre del proyecto. Se usa en tags y en el nombre de algunos recursos."
  type        = string
  default     = "01-ec2-basic"
}

variable "environment" {
  description = "Entorno (lab, dev, prod...). Solo es una etiqueta para organizar recursos."
  type        = string
  default     = "lab"
}

variable "instance_name" {
  description = "Valor de la etiqueta Name de la instancia EC2."
  type        = string
  default     = "tf-lab-ec2"
}

variable "instance_type" {
  description = "Tipo de instancia. t3.micro es pequeño y suele estar en Free Tier."
  type        = string
  default     = "t3.micro"
}

variable "ssh_ingress_cidr" {
  description = "Rango CIDR autorizado a entrar por SSH (puerto 22). En un laboratorio suele usarse 0.0.0.0/0, pero en un uso real conviene limitarlo a tu IP pública, por ejemplo 203.0.113.10/32."
  type        = string
  default     = "0.0.0.0/0"
}

variable "key_name" {
  description = "Nombre de un Key Pair ya existente en la región. Déjalo en null si no vas a entrar por SSH."
  type        = string
  default     = null
}
