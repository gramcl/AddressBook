package AddressBook::Controller::Person;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

AddressBook::Controller::Person - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub list :Local {
    my ( $self, $c ) = @_;
    my $people = $c->model('AddressDB::Person');
    $c->stash->{people} = $people;
}



=encoding utf8

=head1 AUTHOR

Graham McLellan

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
