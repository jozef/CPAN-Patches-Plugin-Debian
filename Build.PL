use strict;
use warnings;
use Module::Build::SysPath;

use 5.010;

my $builder = Module::Build::SysPath->new(
    module_name       => 'CPAN::Patches::Plugin::Debian',
    license           => 'perl',
    dist_author       => 'Jozef Kutej <jkutej@cpan.org>',
    dist_version_from => 'lib/CPAN/Patches/Plugin/Debian.pm',
    
    configure_requires => {
        'Module::Build::SysPath' => 0.13,
    },
    build_requires => {
        'Module::Build::SysPath' => 0.13,
        'Test::More'             => 0,
    },
    requires => {
        'Moose::Role'             => 0,
        'IO::Any'                 => 0,
        'Parse::Deb::Control'     => 0.03,
        'Carp'                    => 0,
        'Getopt::Long'            => 0,
        'Pod::Usage'              => 0,
        'File::Path'              => 2.01,
        'Storable'                => 0,
        'File::Copy'              => 0,
        'File::chdir'             => 0,
        'Scalar::Util'            => 0,
        'Storable'                => 0,
        'Test::Deep::NoTest'      => 0,
        'Dpkg::Version'           => 0,
        'CPAN::Patches'           => 0,
        'File::Basename'          => 0,
        'Path::Class'             => 0,
        'List::MoreUtils'         => 0,
        'File::is'                => 0,
        'File::Spec'              => 0,
    },
    script_files => [
        'script/cpan-patches-update-from-debian',
    ],
    add_to_cleanup => [ 'CPAN-Patches-Plugin-Debian-*' ],
    create_readme  => 1,
    sign           => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/jozef/CPAN-Patches-Plugin-Debian.git',
            bugtracker => 'http://github.com/jozef/CPAN-Patches-Plugin-Debian/issues',
        },
        keywords => [ qw/ cpan patch debian / ],
    },
);

$builder->create_build_script();
