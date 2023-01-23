resource "aws_security_group" "public" {
  name = "cloudcasts-${var.infra_env}-public-sg"
  description = "Public internet access"
  vpc_id = aws_vpc.vpc.id
 
  tags = {
    Name        = "cloudcasts-${var.infra_env}-public-sg"
    Role        = "public"
    Project     = "cloudcasts.io"
    Environment = var.infra_env
    ManagedBy   = "terraform"
  }
}