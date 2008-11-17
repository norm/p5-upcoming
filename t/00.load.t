use strict;
use warnings;

use Test::More tests => 2;

use_ok( 'Upcoming' );

my $upcoming = Upcoming->new();
isa_ok( $upcoming, 'Upcoming' );
isa_ok( $upcoming, 'LWP::UserAgent' );
