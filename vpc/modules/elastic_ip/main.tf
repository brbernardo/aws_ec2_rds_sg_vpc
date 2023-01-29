resource "aws_eip" "nat_eip" {
  vpc = true
  tags = {
    Name = "nat_eip"
  }
}