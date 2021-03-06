
package Paws::Glacier::GetJobOutputOutput;
  use Moose;
  has AcceptRanges => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'acceptRanges');
  has ArchiveDescription => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'archiveDescription');
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'checksum');
  has ContentRange => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'contentRange');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'contentType');
  has Status => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'status');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetJobOutputOutput

=head1 ATTRIBUTES


=head2 AcceptRanges => Str

Indicates the range units accepted. For more information, see RFC2616.


=head2 ArchiveDescription => Str

The description of an archive.


=head2 Body => Str

The job data, either archive data or inventory data.


=head2 Checksum => Str

The checksum of the data in the response. This header is returned only
when retrieving the output for an archive retrieval job. Furthermore,
this header appears only under the following conditions:

=over

=item *

You get the entire range of the archive.

=item *

You request a range to return of the archive that starts and ends on a
multiple of 1 MB. For example, if you have an 3.1 MB archive and you
specify a range to return that starts at 1 MB and ends at 2 MB, then
the x-amz-sha256-tree-hash is returned as a response header.

=item *

You request a range of the archive to return that starts on a multiple
of 1 MB and goes to the end of the archive. For example, if you have a
3.1 MB archive and you specify a range that starts at 2 MB and ends at
3.1 MB (the end of the archive), then the x-amz-sha256-tree-hash is
returned as a response header.

=back



=head2 ContentRange => Str

The range of bytes returned by Amazon Glacier. If only partial output
is downloaded, the response provides the range of bytes Amazon Glacier
returned. For example, bytes 0-1048575/8388608 returns the first 1 MB
from 8 MB.


=head2 ContentType => Str

The Content-Type depends on whether the job output is an archive or a
vault inventory. For archive data, the Content-Type is
application/octet-stream. For vault inventory, if you requested CSV
format when you initiated the job, the Content-Type is text/csv.
Otherwise, by default, vault inventory is returned as JSON, and the
Content-Type is application/json.


=head2 Status => Int

The HTTP response code for a job output request. The value depends on
whether a range was specified in the request.


=head2 _request_id => Str


=cut

