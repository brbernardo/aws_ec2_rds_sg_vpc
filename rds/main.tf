resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = var.subnet_id

  tags = {
    Name = "My DB subnet group"
  }
}
resource "aws_db_instance" "example" {
  allocated_storage         = 20
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  name                      = "example"
  username                  = var.username
  password                  = var.password
  publicly_accessible       = var.publicly_accessible
  parameter_group_name      = "default.mysql5.7"
  backup_retention_period   = 7
  maintenance_window        = "Fri:09:00-Fri:09:30"
  final_snapshot_identifier = "example-final-snapshot"
  skip_final_snapshot = true
}
