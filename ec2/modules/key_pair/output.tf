output "private_key" {
value = "${aws_key_pair.example_key.private_key}"
}

output "public_key" {
value = "${aws_key_pair.example_key.public_key}"
}

output "fingerprint" {
  value = aws_key_pair.example_key.fingerprint
}

output "key_name" {
  value = aws_key_pair.example_key.key_name
}