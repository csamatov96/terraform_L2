resource "aws_instance" "test_ec2" {
    ami = "${var.ami}" #pointing to vars
    instance_type = "${var.instance_type}" #
    key_name = "${aws_key_pair.Terraform_machine.key_name}" #full path 
    security_groups = ["${aws_security_group.my_custom_sec_group.name}"] #full path 
    user_data = "${file("userdata.sh")}" #
    #count = "2"

    tags = {
        Name = "${var.ENV}"
        Dept = "${var.Dept}"
        Created_by = "${var.Created_by}"
    }

}
