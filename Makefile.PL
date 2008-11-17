use strict;
use warnings;
use ExtUtils::MakeMaker     qw( WriteMakefile prompt );

my %config = (
        'NAME'          => 'Upcoming',
        'AUTHOR'        => 'Mark Norman Francis <norm@cackhanded.net>',
        'VERSION_FROM'  => 'lib/Upcoming.pm',
        'ABSTRACT_FROM' => 'lib/Upcoming.pm',
        'PL_FILES'      => {},
        'PREREQ_PM'     => {
            'Test::More'    => 0,
            'version'       => 0,
        },
        'dist'          => { 
            'COMPRESS'      => 'gzip -9f', 
            'SUFFIX'        => 'gz', 
        },
        'clean'         => { 
            'FILES'         => 'Upcoming-*' 
        },
);

my $api_key = prompt( 'Enter your Upcoming API key for tests:', q() );
if ( !defined $api_key ) {
    die "API key required";
}

open KEY, '>apikey' 
    or die "Cannot write to apikey: $!";
print KEY $api_key;
close KEY;

WriteMakefile( %config );
