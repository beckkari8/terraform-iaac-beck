resource "null_resourse" "commands_to_run" {

  # BOOTSTRAPPING
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.centos.public_ip}"
    }

    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
    ]
  }

  # copies files from local Vm to REmote VM
  provisioner "file" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.centos.public_ip}"
    }

    source      = "file"            //file location   
    destination = "/etc/yum.repo.d" //destination folder
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.centos.public_ip}"
    }
    scripts = ["${file(script1)}"] // script location
  }
}