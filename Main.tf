provider "aws" {
    region ="us-west-1"
    profile ="cyril"

}

resource "aws_instance" "jenkins-server" {

   ami = "ami-0928226767668678"
   instance_type = "t2.micro"
user_data =<<EOF
#!/bin/bash
echo " copy from here"

EOF
}
