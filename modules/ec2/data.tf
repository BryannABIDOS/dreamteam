data "aws_ami" "app_ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "name"
        values = ["amzn2-ami-hvm*"]
    }
    filter {
        name = "architecture"
        values = ["x86_64"]
    }
}