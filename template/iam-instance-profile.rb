#
# IAM instance profile resource
# https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
#
require 'kumogata/template/helper'

name = _resource_name(args[:name], "instance profile")
path = args[:path] || "/"
roles = _ref_array("roles", args, "role")
profile_name = _real_name("profile", args)

_(name) do
  Type "AWS::IAM::InstanceProfile"
  Properties do
    Path path
    Roles roles
    InstanceProfileName profile_name if profile_name
  end
end
