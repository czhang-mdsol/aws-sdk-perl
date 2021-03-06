package Paws::RDS::DBEngineVersion;
  use Moose;
  has DBEngineDescription => (is => 'ro', isa => 'Str');
  has DBEngineVersionDescription => (is => 'ro', isa => 'Str');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultCharacterSet => (is => 'ro', isa => 'Paws::RDS::CharacterSet');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has SupportedCharacterSets => (is => 'ro', isa => 'ArrayRef[Paws::RDS::CharacterSet]', request_name => 'CharacterSet', traits => ['NameInRequest']);
  has SupportedTimezones => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Timezone]', request_name => 'Timezone', traits => ['NameInRequest']);
  has ValidUpgradeTarget => (is => 'ro', isa => 'ArrayRef[Paws::RDS::UpgradeTarget]', request_name => 'UpgradeTarget', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBEngineVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBEngineVersion object:

  $service_obj->Method(Att1 => { DBEngineDescription => $value, ..., ValidUpgradeTarget => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBEngineVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->DBEngineDescription

=head1 DESCRIPTION

This data type is used as a response element in the action
DescribeDBEngineVersions.

=head1 ATTRIBUTES


=head2 DBEngineDescription => Str

  The description of the database engine.


=head2 DBEngineVersionDescription => Str

  The description of the database engine version.


=head2 DBParameterGroupFamily => Str

  The name of the DB parameter group family for the database engine.


=head2 DefaultCharacterSet => L<Paws::RDS::CharacterSet>

  The default character set for new instances of this engine version, if
the C<CharacterSetName> parameter of the CreateDBInstance API is not
specified.


=head2 Engine => Str

  The name of the database engine.


=head2 EngineVersion => Str

  The version number of the database engine.


=head2 SupportedCharacterSets => ArrayRef[L<Paws::RDS::CharacterSet>]

  A list of the character sets supported by this engine for the
C<CharacterSetName> parameter of the C<CreateDBInstance> action.


=head2 SupportedTimezones => ArrayRef[L<Paws::RDS::Timezone>]

  A list of the time zones supported by this engine for the C<Timezone>
parameter of the C<CreateDBInstance> action.


=head2 ValidUpgradeTarget => ArrayRef[L<Paws::RDS::UpgradeTarget>]

  A list of engine versions that this database engine version can be
upgraded to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

