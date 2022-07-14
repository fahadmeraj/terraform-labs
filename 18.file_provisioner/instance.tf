resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  tags = {
    Name = "first-tf-instance"
  }
  user_data = file("${path.module}/script.sh")
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("${path.module}/id_rsa")
    host        = self.public_ip
  }
  # file, local-exec, remote-exec
  provisioner "file" {
    source      = "readme.md"      # terraform machine
    destination = "/tmp/readme.md" # remote machine
  }
  provisioner "file" {
    content     = "this is test content" # terraform machine
    destination = "/tmp/content.md"      # remote machine
  }
}
