package PharaohBootStrap 3.02;

use 5.12.0;
use warnings;
use utf8;
use open IO => ':utf8';

BEGIN {
    use FindBin;
    $0 = $FindBin::Bin . '/' . $FindBin::Script;
	$FindBin::Bin =~ /(.*)/;
	$FindBin::Bin = $1;
    chdir $FindBin::Bin;
    chdir($main::project_path) if $main::project_path;

    if (!$main::pharaoh_path && $main::pharaoh_config && -e $main::pharaoh_config) {
        $main::pharaoh_path = do $main::pharaoh_config || die $@;
    }

    push @INC, ('lib/') if -e 'lib/';
    push @INC, ($main::pharaoh_path) if $main::pharaoh_path && -e $main::pharaoh_path;
}

=head1 NAME

PharaohBootStrap1 - The great new PharaohBootStrap1!

=head1 VERSION

Version 0.01

=cut


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use PharaohBootStrap1;

    my $foo = PharaohBootStrap1->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub function1 {
}

=head2 function2

=cut

sub function2 {
}

=head1 AUTHOR

Dmytro Zagashev, C<< <zdm at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-pharaohbootstrap1 at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=PharaohBootStrap1>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc PharaohBootStrap1


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=PharaohBootStrap1>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/PharaohBootStrap1>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/PharaohBootStrap1>

=item * Search CPAN

L<http://search.cpan.org/dist/PharaohBootStrap1/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2010 Dmytro Zagashev.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1;
