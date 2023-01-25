resource "aws_rds_instance" "example" {
  allocated_storage         = 20
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  name                      = "example"
  username                  = var.username
  password                  = var.password
  vpc_security_group_ids    = [var.security_group_id]
  subnet_ids                = var.subnet_ids
  publicly_accessible       = var.publicly_accessible
  parameter_group_name      = "default.mysql5.7"
  backup_retention_period   = 7
  maintenance_window        = "Fri:09:00-Fri:09:30"
  final_snapshot_identifier = "example-final-snapshot"
}
