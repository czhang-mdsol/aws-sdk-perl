package Paws::Pinpoint::ImportJobRequest;
  use Moose;
  has DefineSegment => (is => 'ro', isa => 'Bool');
  has ExternalId => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has RegisterEndpoints => (is => 'ro', isa => 'Bool');
  has RoleArn => (is => 'ro', isa => 'Str');
  has S3Url => (is => 'ro', isa => 'Str');
  has SegmentId => (is => 'ro', isa => 'Str');
  has SegmentName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ImportJobRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ImportJobRequest object:

  $service_obj->Method(Att1 => { DefineSegment => $value, ..., SegmentName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ImportJobRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DefineSegment

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DefineSegment => Bool

  Sets whether the endpoints create a segment when they are imported.


=head2 ExternalId => Str

  A unique, custom ID assigned to the IAM role that restricts who can
assume the role.


=head2 Format => Str

  The format of the files that contain the endpoint definitions. Valid
values: CSV, JSON


=head2 RegisterEndpoints => Bool

  Sets whether the endpoints are registered with Amazon Pinpoint when
they are imported.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of an IAM role that grants Amazon
Pinpoint access to the Amazon S3 location that contains the endpoints
to import.


=head2 S3Url => Str

  A URL that points to the location within an Amazon S3 bucket that
contains the endpoints to import. The location can be a folder or a
single file. The URL should follow this format:
s3://bucket-name/folder-name/file-name Amazon Pinpoint will import
endpoints from this location and any subfolders it contains.


=head2 SegmentId => Str

  The ID of the segment to update if the import job is meant to update an
existing segment.


=head2 SegmentName => Str

  A custom name for the segment created by the import job. Use if
DefineSegment is true.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

