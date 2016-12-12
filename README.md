eip terraform module
=======================

A terraform module for provisioning an elastic ip and associating to an ec2 instance
* Assumes you're making your instances in a VPC.

Module Input Variables
----------------------

- `instance_id` - The id of the ec2 instance with which to associate the eip

Usage
-----

You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. `main.tf`

```
module "elastic_ip" {
    source = "github.com/misdepartment/tf_aws_eip"
    
    instance_id = "${module.ec2_instance.ec2_instance_id}"
}
```

Authors
=======

Created and maintained by `thepastelsuit`
