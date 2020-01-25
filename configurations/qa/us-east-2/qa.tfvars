region                  =  "us-east-2"
s3_bucket                = "task3-qaenv"
lc_name                 =     "lc-qa"
image_id                =     "ami-02ccb28830b645a41"
instance_type           =      "t2.micro"
device_name             =      "/dev/xvdz"
device_type             =       "gp2"
volume_size             =      "50"
asg_name                =     "asg-qa"
vpc_zone_identifier1     =       "subnet-0193bbc67e1d8369d"
vpc_zone_identifier2     =        "subnet-05adcf56cb873abb0"
vpc_zone_identifier3     =      "subnet-09988127cd739c70b"
max_size                =       "1"
min_size                =       "0"
desired_capacity        =       "1"
wait_for_capacity_timeout =     "0"
key_name                = "qakey"
security_group        = "sg-0b81a0eff946fb17e"


environment = "qa"
s3_folder_project = "application"          #Will be used to set backend.tf
s3_folder_region = "us-east-2"             #Will be used to set backend.tf
s3_folder_type = "state"                   #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf

