package Geo::Direction::Name::Locale;

use warnings;
use strict;
use Carp;

use version; our $VERSION = qv('0.0.1');

BEGIN
{
    if ( $] >= 5.006 )
    {
        require utf8; import utf8;
    }
}

sub new {
    my $class  = shift;

    my $dir  = $class->dir_string();
    my $abbr = $class->abbr_string();

    my %dirs = ();
    my @strs = map { 
        $dirs{lc($dir->[$_])}  = $_;
        $dirs{lc($abbr->[$_])} = $_;
        [ $dir->[$_], $abbr->[$_],] 
    } (0..31);

    bless {
        dirs => \%dirs,
        strs => \@strs,
    }, $class;
}

sub string {
    my $self = shift;
    my ($i,$abbr) = @_;

    $self->{strs}->[$i]->[$abbr];
}

sub direction {
    my $self = shift;
    my ($str) = @_;

    my $i = $self->{dirs}->{lc($str)};
    return unless (defined($i));
    return $i * 11.25;
}

sub dir_string {
[
    '0.00',
    '11.25',
    '22.50',
    '33.75',
    '45.00',
    '56.25',
    '67.50',
    '78.75',
    '90.00',
    '101.25',
    '112.50',
    '123.75',
    '135.00',
    '146.25',
    '157.50',
    '168.75',
    '180.00',
    '191.25',
    '202.50',
    '213.75',
    '225.00',
    '236.25',
    '247.50',
    '258.75',
    '270.00',
    '281.25',
    '292.50',
    '303.75',
    '315.00',
    '326.25',
    '337.50',
    '348.75',
]
}

sub abbr_string {
    $_[0]->dir_string();
}

1; # Magic true value required at end of module
__END__

