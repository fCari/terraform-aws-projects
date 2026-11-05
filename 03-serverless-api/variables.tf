variable "aws_region" {
  description = "Región de AWS donde se desplegará la API. us-east-1 es Norte de Virginia."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Prefijo para nombrar recursos (Lambda, API, role, logs)."
  type        = string
  default     = "tf-lab-hello"
}

variable "environment" {
  description = "Entorno (lab, dev, prod...)."
  type        = string
  default     = "lab"
}

variable "lambda_timeout" {
  description = "Tiempo máximo de ejecución de la función, en segundos."
  type        = number
  default     = 10
}

variable "lambda_memory_size" {
  description = "Memoria de la función en MB. 128 es el mínimo y el más barato."
  type        = number
  default     = 128
}

variable "log_retention_days" {
  description = "Días que se conservan los logs. Un valor bajo evita acumular almacenamiento."
  type        = number
  default     = 7
}
