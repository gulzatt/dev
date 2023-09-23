resource "aws_db_subnet_group" "default" {
  name       = "cloud"
  subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnets

  tags = {
    Name = "My DB subnet group"
  }
}