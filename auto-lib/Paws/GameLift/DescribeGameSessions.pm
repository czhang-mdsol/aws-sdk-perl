
package Paws::GameLift::DescribeGameSessions;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameSessionId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGameSessions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeGameSessionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameSessions - Arguments for method DescribeGameSessions on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGameSessions on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method DescribeGameSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGameSessions.

As an example:

  $service_obj->DescribeGameSessions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AliasId => Str

Unique identifier for a fleet alias. Specify an alias to retrieve
information on all game sessions active on the fleet.



=head2 FleetId => Str

Unique identifier for a fleet. Specify a fleet to retrieve information
on all game sessions active on the fleet.



=head2 GameSessionId => Str

Unique identifier for a game session. Specify the game session to
retrieve information on.



=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

Token indicating the start of the next sequential page of results. Use
the token that is returned with a previous call to this action. To
specify the start of the result set, do not specify a value.



=head2 StatusFilter => Str

Game session status to filter results on. Possible game session states
include C<ACTIVE>, C<TERMINATED>, C<ACTIVATING>, and C<TERMINATING>
(the last two are transitory).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGameSessions in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

