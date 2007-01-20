package Catalyst::Plugin::Upload::SHA1;

use strict;
use Catalyst::Request::Upload;
use Digest::SHA1;

our $VERSION = '0.01';

{
    package Catalyst::Request::Upload;

    sub sha1sum {
        my $self = shift;

        $self->{sha1sum} ||= Digest::SHA1->new->addfile( $self->fh )->hexdigest;
    }
}

1;

__END__

=head1 NAME

Catalyst::Plugin::Upload::SHA1 - Compute SHA1 message digest of uploads

=head1 SYNOPSIS

    use Catalyst qw< Upload::SHA1 >;

    if ( my $upload = $c->request->upload('field') ) {
        print $upload->sha1sum;
    }

=head1 DESCRIPTION

Extends C<Catalyst::Request::Upload> with a SHA1 message digest
method. This module is based on L<Catalyst::Plugin::Upload::MD5> by
Christian Hansen.

This module is distributed with a Catalyst example application called
B<Upload::SHA1>, see F<example/Upload-SHA1/README> in this
distribution for how to run it.

=head1 METHODS

=over 4

=item sha1sum

Returns an SHA1 message digest of upload in hexadecimal form.

=back

=head1 SEE ALSO

L<Digest::SHA1>, L<Catalyst::Request>,
L<Catalyst::Request::Upload>. L<Catalyst::Plugin::Upload::MD5>

=head1 AUTHOR

E<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

=head1 LICENSE

This library is free software . You can redistribute it and/or modify it under
the same terms as perl itself.

=cut
