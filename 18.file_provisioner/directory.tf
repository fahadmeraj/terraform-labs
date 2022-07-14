# Copy a directory

  provisioner "file" {
    source = "conf"
    destination = "/home/ec2-user"

  }
