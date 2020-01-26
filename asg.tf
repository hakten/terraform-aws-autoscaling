module "asg" {
  source = "terraform-aws-modules/autoscaling/aws"
  name = "something"

  # Launch configuration
  lc_name = "${var.lc_name}"

  image_id        = "${var.image_id}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.allow_80_443.name}"]


  # Auto scaling group
  asg_name                  = "${var.asg_name}"
  vpc_zone_identifier       = ["${var.vpc_zone_identifier1}","${var.vpc_zone_identifier2}","${var.vpc_zone_identifier3}"]
  health_check_type         = "EC2"
  min_size                  = "${var.min_size}"
  max_size                  = "${var.max_size}"
  desired_capacity          = 1
  wait_for_capacity_timeout = 0


}