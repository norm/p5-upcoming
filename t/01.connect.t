use strict;
use warnings;

use Test::More qw( no_plan );
use Upcoming;


my $api_key;

BEGIN {
    open KEY, 'apikey' 
        or die "Cannot read apikey: $!";
    $api_key = <KEY>;
    close KEY;
}


# validate the key by pattern and by using it
my $upcoming = Upcoming->new( 
    'key' => $api_key,
);
ok( $api_key =~ m{^ [a-z0-9]{10} $}x, 'Valid Upcoming API key' );

my $list = $upcoming->get_category_list();
ok( $list, 'Can get category list' );


# validate that an invalid API key causes an error
my $broken_upcoming = Upcoming->new(
    'key' => 'broken',
);
my $broken_list = $upcoming->get_category_list();
ok( ( !defined $broken_list ), 'Error getting category list' );
