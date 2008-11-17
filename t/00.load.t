use strict;
use warnings;

use Test::More tests => 3;

# ensure the module can be loaded, returns the right object and that it is
# also a subclass of LWP::UserAgent module (and so can fetch URLs)

use_ok( 'Upcoming' );

my $upcoming = Upcoming->new();
isa_ok( $upcoming, 'Upcoming' );
can_ok( $upcoming, qw( get timeout ) );
