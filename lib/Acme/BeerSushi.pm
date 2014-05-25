package Acme::BeerSushi;
use 5.008005;
use strict;
use warnings;
use utf8;

our $VERSION = "0.01";

use Mouse;
use Mouse::Util::TypeConstraints;

subtype 'Acme::BeerSushi::Chars',
  as    'Str',
  where { length($_) == 2 && substr($_, 0, 1) ne substr($_, 1, 1) },
  message { 'must be two and different decoded characters' };

has chars => (
    is      => 'ro',
    isa     => 'Acme::BeerSushi::Chars',
    default => sub { '🍺🍣' },
);

has _chars => (
    is => 'ro',
    isa => 'ArrayRef[Str]',
    default => sub {
        [sort split //, shift->chars];
    },
);

no Mouse;


1;
__END__

=encoding utf-8

=head1 NAME

Acme::BeerSushi - It's new $module

=head1 SYNOPSIS

    use Acme::BeerSushi;

=head1 DESCRIPTION

Acme::BeerSushi is ...

=head1 LICENSE

Copyright (C) Songmu.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Songmu E<lt>y.songmu@gmail.comE<gt>

=cut

