# terraform_L2
## The simple Terraform code that creates an instance and attach a key of ur bastion to that instance and userdata is also used 
* The s3 bucket is used to store and compare the .tfstate file of ur infrastructure and also it creates an empty bucket u specify  
* The DynamoDB table which will use .tfstate file to lock backend 
* The Route53 which will create a record pointing to an instance that will be created 
* Used variables to separate the actual code from values (less hardcoding)
* The custom security group which will have inbound SSH/HTTP to whole world and outbound of all ports and protocols to all 
* The output which will show the all necessary information related to resources u created like ID of an instance that is being created 2. its Public IP, 3. user-name to access it 4. the key it’s using 5. new bucket name that will be created 6. description of security_group

![Visual Graph](image/graphviz.png)
