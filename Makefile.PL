use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'PharaohBootStrap',
    AUTHOR              => q{Dmytro Zagashev <zdm@cpan.org>},
    VERSION_FROM        => 'lib/PharaohBootStrap.pm',
    ABSTRACT_FROM       => 'lib/PharaohBootStrap.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'PharaohBootStrap-*' },
);
