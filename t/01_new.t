use strict;
use warnings;
use utf8;
use Test::More;

use Acme::BeerSushi;

subtest new => sub {
    my $beer_sushi = Acme::BeerSushi->new;
    isa_ok $beer_sushi, 'Acme::BeerSushi';
    is  $beer_sushi->chars, '🍺🍣';
    is_deeply $beer_sushi->_chars, [qw/🍣  🍺/];
};

subtest 'new with options' => sub {
    my $beer_sushi = Acme::BeerSushi->new(chars => 'ab');
    isa_ok $beer_sushi, 'Acme::BeerSushi';
    is  $beer_sushi->chars, 'ab';
    is_deeply $beer_sushi->_chars, [qw/a b/];
};

done_testing;
