
package Paws::IoT::ListThingGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NamePrefixFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namePrefixFilter');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ParentGroup => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'parentGroup');
  has Recursive => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'recursive');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListThingGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListThingGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingGroups - Arguments for method ListThingGroups on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThingGroups on the 
AWS IoT service. Use the attributes of this class
as arguments to method ListThingGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThingGroups.

As an example:

  $service_obj->ListThingGroups(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NamePrefixFilter => Str

A filter that limits the results to those with the specified name
prefix.



=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.



=head2 ParentGroup => Str

A filter that limits the results to those with the specified parent
group.



=head2 Recursive => Bool

If true, return child groups as well.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThingGroups in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
