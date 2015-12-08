package Paws::RDS::DBClusterMember;
  use Moose;
  has DBClusterParameterGroupStatus => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has IsClusterWriter => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterMember

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBClusterMember object:

  $service_obj->Method(Att1 => { DBClusterParameterGroupStatus => $value, ..., IsClusterWriter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBClusterMember object:

  $result = $service_obj->Method(...);
  $result->Att1->DBClusterParameterGroupStatus

=head1 DESCRIPTION

Contains information about an instance that is part of a DB cluster.

=head1 ATTRIBUTES


=head2 DBClusterParameterGroupStatus => Str

  Specifies the status of the DB cluster parameter group for this member
of the DB cluster.


=head2 DBInstanceIdentifier => Str

  Specifies the instance identifier for this member of the DB cluster.


=head2 IsClusterWriter => Bool

  Value that is C<true> if the cluster member is the primary instance for
the DB cluster and C<false> otherwise.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
