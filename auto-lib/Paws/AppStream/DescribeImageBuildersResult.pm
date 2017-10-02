
package Paws::AppStream::DescribeImageBuildersResult;
  use Moose;
  has ImageBuilders => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::ImageBuilder]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImageBuildersResult

=head1 ATTRIBUTES


=head2 ImageBuilders => ArrayRef[L<Paws::AppStream::ImageBuilder>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;