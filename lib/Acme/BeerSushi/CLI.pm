package Acme::BeerSushi::CLI;
use strict;
use warnings;
use utf8;

use Acme::BeerSushi;
use Path::Tiny;

sub run {
    my ($class, @argv) = @_;

    my $file = shift @argv;
    die "no files or subcommands are specified\n" unless $file;

    if (-f $file) {
        my $beer_sushi = Acme::BeerSushi->new;
        $beer_sushi->run(path($file)->slurp_utf8);
        return;
    }
    else {
        # for sub commands
        ...
    }
}

1;
