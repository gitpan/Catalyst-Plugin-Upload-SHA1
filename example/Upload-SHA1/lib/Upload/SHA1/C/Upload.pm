package Upload::SHA1::C::Upload;

use strict;
use base qw< Catalyst::Base >;

=head1 NAME

Upload::SHA1::C::Upload - Upload::SHA1 F</upload> controller

=head1 METHODS

=cut

=head1 index

Display the upload form which is also the location the POST request
comes to.

=cut

sub index : Default {
    my ( $self, $c ) = @_;

    # Someone uploaded a file
    if ( my $upload = $c->req->upload( 'file' ) ) {
        $c->stash->{ filename } = $upload->filename;
        $c->stash->{ sha1sum }  = $upload->sha1sum;
    }

    $c->stash->{template} = 'upload.tt';
}

1;
