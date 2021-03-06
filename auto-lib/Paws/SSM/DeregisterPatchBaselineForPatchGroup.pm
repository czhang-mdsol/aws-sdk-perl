
package Paws::SSM::DeregisterPatchBaselineForPatchGroup;
  use Moose;
  has BaselineId => (is => 'ro', isa => 'Str', required => 1);
  has PatchGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterPatchBaselineForPatchGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeregisterPatchBaselineForPatchGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeregisterPatchBaselineForPatchGroup - Arguments for method DeregisterPatchBaselineForPatchGroup on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterPatchBaselineForPatchGroup on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method DeregisterPatchBaselineForPatchGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterPatchBaselineForPatchGroup.

As an example:

  $service_obj->DeregisterPatchBaselineForPatchGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaselineId => Str

The ID of the patch baseline to deregister the patch group from.



=head2 B<REQUIRED> PatchGroup => Str

The name of the patch group that should be deregistered from the patch
baseline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterPatchBaselineForPatchGroup in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

