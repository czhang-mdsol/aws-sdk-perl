
package Paws::RedShift::DescribeResize {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResize');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ResizeProgressMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeResizeResult');
}
1;