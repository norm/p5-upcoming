package Upcoming;

use strict;
use warnings;

use Exporter;
use LWP::UserAgent;


our @ISA = qw( LWP::UserAgent );


# boilerplate new function
sub new {
    my $proto = shift;
    my $args  = shift;
    
    my $class = ref $proto || $proto;
    my $self  = LWP::UserAgent->new();
    bless $self, $class;
    
    return $self;
}

1;
