variable "instances"{
    default = ["mysql","backend","frontend"]
    #default = ["mysql_1"]
}

variable "project" {
    default = "expence"
}

variable "environment" {
    
}

variable "common_tags"{
    type = map
    default = {
        project = "expense"
        environment = "dev"
    }
}

variable "zone_id" {
    default =   "Z05332201PXKJYQA7Y7AZ"
}
variable "domain_name" {
    default = "learnnewthings.site"
}


variable "instance_type"{
    default="t3.micro"
}

variable "ami_id" {
    type    = string
    default = "ami-09c813fb71547fc4f"
    description = "This is RH9 AMI"
}

variable "ami_tags" {
    type    = map
    default ={
        Name    = "terraform_dev"

    }


}

