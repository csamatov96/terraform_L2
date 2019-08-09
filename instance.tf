resource "aws_instance" "test_ec2" {
    ami = "ami-02f706d959cedf892" #hardcoded
    instance_type = "t2.micro" #hardcoded
    key_name = "${aws_key_pair.Terraform_machine.key_name}" #full path 
    security_groups = ["${aws_security_group.my_custom_sec_group.name}"] #full path 
    user_data = "${file("userdata.sh")}"
    #count = "2"

    tags = {
        Name = "test_env"
        Dept = "DevOps"
        Group = "April"
        Created_by = "JC"
    }

}
