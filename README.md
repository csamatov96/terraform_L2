# terraform_L1-

The simple Terraform code that creates an instance and attach a key of ur bastion to that instance + userdata.sh  
The s3 bucket to store the .tfstate file of ur infrastructure 
The DynamoDB table which will use .tfstate file to lock backend 
The Route53 which will create a record pointing to an instance that is created 
Used variables to separate the actual code from values (less hardcoding)  
The custom security group which will have inbound SSH/HTTP to whole world and outbound of all ports and protocols to all 
The output which will show the all necessary information related to resources u created, 
1.like ID of an instance that is being created
2. its Public IP, 
3. user-name to access it
4. the key it's using
5. bucket name that is being created
6. description of security_group
