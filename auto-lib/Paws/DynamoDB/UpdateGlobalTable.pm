
package Paws::DynamoDB::UpdateGlobalTable;
  use Moose;
  has GlobalTableName => (is => 'ro', isa => 'Str', required => 1);
  has ReplicaUpdates => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGlobalTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateGlobalTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateGlobalTable - Arguments for method UpdateGlobalTable on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGlobalTable on the 
Amazon DynamoDB service. Use the attributes of this class
as arguments to method UpdateGlobalTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGlobalTable.

As an example:

  $service_obj->UpdateGlobalTable(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalTableName => Str

The global table name.



=head2 B<REQUIRED> ReplicaUpdates => ArrayRef[L<Paws::DynamoDB::ReplicaUpdate>]

A list of regions that should be added or removed from the global
table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGlobalTable in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
