package Paws::DeviceFarm::NetworkProfile;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has DownlinkBandwidthBits => (is => 'ro', isa => 'Int', xmlname => 'downlinkBandwidthBits', request_name => 'downlinkBandwidthBits', traits => ['Unwrapped','NameInRequest']);
  has DownlinkDelayMs => (is => 'ro', isa => 'Int', xmlname => 'downlinkDelayMs', request_name => 'downlinkDelayMs', traits => ['Unwrapped','NameInRequest']);
  has DownlinkJitterMs => (is => 'ro', isa => 'Int', xmlname => 'downlinkJitterMs', request_name => 'downlinkJitterMs', traits => ['Unwrapped','NameInRequest']);
  has DownlinkLossPercent => (is => 'ro', isa => 'Int', xmlname => 'downlinkLossPercent', request_name => 'downlinkLossPercent', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', request_name => 'type', traits => ['Unwrapped','NameInRequest']);
  has UplinkBandwidthBits => (is => 'ro', isa => 'Int', xmlname => 'uplinkBandwidthBits', request_name => 'uplinkBandwidthBits', traits => ['Unwrapped','NameInRequest']);
  has UplinkDelayMs => (is => 'ro', isa => 'Int', xmlname => 'uplinkDelayMs', request_name => 'uplinkDelayMs', traits => ['Unwrapped','NameInRequest']);
  has UplinkJitterMs => (is => 'ro', isa => 'Int', xmlname => 'uplinkJitterMs', request_name => 'uplinkJitterMs', traits => ['Unwrapped','NameInRequest']);
  has UplinkLossPercent => (is => 'ro', isa => 'Int', xmlname => 'uplinkLossPercent', request_name => 'uplinkLossPercent', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::NetworkProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::NetworkProfile object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UplinkLossPercent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::NetworkProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An array of settings that describes characteristics of a network
profile.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the network profile.


=head2 Description => Str

  The description of the network profile.


=head2 DownlinkBandwidthBits => Int

  The data throughput rate in bits per second, as an integer from 0 to
104857600.


=head2 DownlinkDelayMs => Int

  Delay time for all packets to destination in milliseconds as an integer
from 0 to 2000.


=head2 DownlinkJitterMs => Int

  Time variation in the delay of received packets in milliseconds as an
integer from 0 to 2000.


=head2 DownlinkLossPercent => Int

  Proportion of received packets that fail to arrive from 0 to 100
percent.


=head2 Name => Str

  The name of the network profile.


=head2 Type => Str

  The type of network profile. Valid values are listed below.


=head2 UplinkBandwidthBits => Int

  The data throughput rate in bits per second, as an integer from 0 to
104857600.


=head2 UplinkDelayMs => Int

  Delay time for all packets to destination in milliseconds as an integer
from 0 to 2000.


=head2 UplinkJitterMs => Int

  Time variation in the delay of received packets in milliseconds as an
integer from 0 to 2000.


=head2 UplinkLossPercent => Int

  Proportion of transmitted packets that fail to arrive from 0 to 100
percent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
