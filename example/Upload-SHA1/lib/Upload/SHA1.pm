package Upload::SHA1;

=head1 NAME

Upload::SHA1 - L<Catalyst::Plugin::Upload::SHA1> example application

=cut

use strict;

use Catalyst;

our $VERSION = '0.01';

__PACKAGE__->config( name => 'Upload::SHA1' );

__PACKAGE__->setup( qw< Upload::SHA1 > );

=head1 METHODS

=cut

=head2 default

Redirects to F</upload>

=cut

sub default : Private {
    my ( $self, $c ) = @_;

    $c->res->redirect( '/upload' );
}

=head2 end

Uses L<Catalyst::Action::RenderView>

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

E<AElig>var ArnfjE<ouml>rE<eth> Bjarmason <avar@cpan.org>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
