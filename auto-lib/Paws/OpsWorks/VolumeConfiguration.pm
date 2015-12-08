package Paws::OpsWorks::VolumeConfiguration;
  use Moose;
  has Iops => (is => 'ro', isa => 'Int');
  has MountPoint => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfDisks => (is => 'ro', isa => 'Int', required => 1);
  has RaidLevel => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int', required => 1);
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::VolumeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::VolumeConfiguration object:

  $service_obj->Method(Att1 => { Iops => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::VolumeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Iops

=head1 DESCRIPTION

Describes an Amazon EBS volume configuration.

=head1 ATTRIBUTES


=head2 Iops => Int

  For PIOPS volumes, the IOPS per disk.


=head2 B<REQUIRED> MountPoint => Str

  The volume mount point. For example "/dev/sdh".


=head2 B<REQUIRED> NumberOfDisks => Int

  The number of disks in the volume.


=head2 RaidLevel => Int

  The volume RAID level.


=head2 B<REQUIRED> Size => Int

  The volume size.


=head2 VolumeType => Str

  The volume type:

=over

=item * C<standard> - Magnetic

=item * C<io1> - Provisioned IOPS (SSD)

=item * C<gp2> - General Purpose (SSD)

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
