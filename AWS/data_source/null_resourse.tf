resource "null_resource" "commands_to_run" {

#   # BOOTSTRAPPING
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

    source      = "script1.sh"              //file location   
    destination = "/home/centos/script1.sh" //destination folder
  }

#  provisioner "remote-exec" {
#     connection {
#       type        = "ssh"
#       user        = "centos"
#       private_key = "${file("~/.ssh/id_rsa")}"
#       host        = "${aws_instance.centos.public_ip}"
#     }

#     inline = [
#       "chmod +x /home/centos/script1.sh",
#       "/home/centos/./script1.sh",
#     ]
#   }
}