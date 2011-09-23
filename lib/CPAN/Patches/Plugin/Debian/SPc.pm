package CPAN::Patches::Plugin::Debian::SPc;

=head1 NAME

CPAN::Patches::Plugin::Debian::SPc - Debian specific folders

=cut

use warnings;
use strict;

our $VERSION = '0.03';

use File::Spec;

sub _path_types {qw(
	sharedstatedir
)};

=head1 PATHS

=head2 prefix

=head2 sharedstatedir

Used to store Debian patch set and git checkout

=cut

sub prefix     { use Sys::Path; Sys::Path->find_distribution_root(__PACKAGE__); };
sub sharedstatedir { File::Spec->catdir(__PACKAGE__->prefix, 'sharedstate') };

1;
