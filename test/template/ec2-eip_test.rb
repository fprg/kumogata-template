require 'abstract_unit'

class Ec2EipTest < Minitest::Test
  def test_normal
    template = <<-EOS
_ec2_eip "test", instance: "test"
    EOS
    act_template = run_client_as_json(template)
    exp_template = <<-EOS
{
  "TestEip": {
    "Type": "AWS::EC2::EIP",
    "Properties": {
      "InstanceId": "test"
    }
  }
}
    EOS
    assert_equal exp_template.chomp, act_template
  end
end
