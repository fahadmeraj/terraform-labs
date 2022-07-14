resource "aws_instance" "web" {
  # ...

  provisioner "local-exec" {
    when    = "destroy"
    command = "echo 'Destroy-time provisioner'"
  }
}
