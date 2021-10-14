resource "aws_db_instance" "mysql" {

  identifier                = "mysql"
  allocated_storage         = 20
  backup_retention_period   = 2
  backup_window             = "01:00-01:30"
  maintenance_window        = "sun:03:00-sun:03:30"
  multi_az                  = false
  engine                    = "mysql"
  engine_version            = "8.0.25"
  instance_class            = "db.t2.micro"
  name                      = "worker"
  username                  = "worker"
  password                  = "Thang123456"
  port                      = 3306
  db_subnet_group_name      = aws_db_subnet_group.db_subnet_group.id
  vpc_security_group_ids    = [aws_security_group.rds_sgr.id, aws_security_group.ecs_sgr.id]
  skip_final_snapshot       = true
  final_snapshot_identifier = "woker-final"
  publicly_accessible       = true
}
