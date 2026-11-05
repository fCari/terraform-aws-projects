# Los outputs muestran información útil cuando termina terraform apply.
# También se consultan después con `terraform output`.

output "instance_id" {
  description = "Identificador de la instancia EC2 creada."
  value       = aws_instance.lab.id
}

output "instance_public_ip" {
  description = "IP pública de la instancia. Sirve para comprobar que existe o para conectar por SSH."
  value       = aws_instance.lab.public_ip
}

output "website_url" {
  description = "URL HTTP servida por nginx (user_data). Espera 1-2 minutos tras el apply."
  value       = "http://${aws_instance.lab.public_ip}"
}

output "instance_public_dns" {
  description = "DNS público de la instancia."
  value       = aws_instance.lab.public_dns
}

output "ami_id" {
  description = "AMI que eligió el data source. Útil para ver que no está hardcodeada."
  value       = data.aws_ami.amazon_linux.id
}

output "security_group_id" {
  description = "ID del Security Group asociado a la instancia."
  value       = aws_security_group.instance.id
}
