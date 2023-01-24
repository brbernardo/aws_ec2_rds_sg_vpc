resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "ssh-keygen -t rsa -b 4096 -f './id_rsa_aws' -C 'seu_email@exemplo.com'"
  }
}

resource "aws_key_pair" "example_key" {
  key_name   = "example_key"
  public_key = "${file("./id_rsa_aws.pub")}"
  depends_on = [null_resource.example]
}
