resource "aws_db_instance" "weather-app-db" {
  allocated_storage             = 10
  db_name                       = "weather"
  engine                        = "postgres"
  engine_version                =  "15.2"
  instance_class                = "db.t3.micro"
  manage_master_user_password   = true
  username                      = "foo"

}
