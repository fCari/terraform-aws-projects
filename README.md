# Laboratorios de Terraform

Cuatro proyectos independientes. Entra en cada carpeta, lee el README y ejecuta. Al terminar, destruye la infraestructura.

| Orden | Proyecto | Idea |
| --- | --- | --- |
| 1 | [`01-ec2-basic`](./01-ec2-basic) | Una instancia EC2 |
| 2 | [`02-s3-static-website`](./02-s3-static-website) | Sitio estático en S3 |
| 3 | [`03-serverless-api`](./03-serverless-api) | API Gateway → Lambda → Logs |
| 4 | [`04-multicloud-web`](./04-multicloud-web) | La misma web en AWS y Azure |

Labs 1–3: Terraform >= 1.5 y credenciales de AWS (`aws configure`), región `us-east-1`. Lab 4: además `az login`. No pongas claves en el código.