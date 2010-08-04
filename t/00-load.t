#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'PharaohBootStrap' ) || print "Bail out!
";
}

diag( "Testing PharaohBootStrap $PharaohBootStrap::VERSION, Perl $], $^X" );
