provider "aws" {
  region = "us-east-1" # Change this to your desired region
}

# Define your Elastic Beanstalk application
resource "aws_beanstalk_application" "my_beanstalk_app" {
  name = "my-beanstalk-app"
}

# Define the environment for your Elastic Beanstalk application
resource "aws_beanstalk_environment" "my_beanstalk_env" {
  name                = "my-beanstalk-env"
  application         = aws_beanstalk_application.my_beanstalk_app.name
  solution_stack_name = "64bit Amazon Linux 2 v3.2.1 running PHP 7.4" # Change this to match your application's requirements
  # other configuration options like instance type, key pair, etc.
}

# Define any additional resources like load balancers, databases, etc.
