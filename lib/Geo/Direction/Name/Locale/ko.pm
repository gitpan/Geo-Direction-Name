package Geo::Direction::Name::Locale::ko;

use warnings;
use strict;
use Carp;

use base qw/Geo::Direction::Name::Locale/;

BEGIN
{
    if ( $] >= 5.006 )
    {
        require utf8; import utf8;
    }
}

sub dir_string {
[
    '북',
    '북미동',
    '북북동',
    '북동미북',
    '북동',
    '북동미동',
    '동북동',
    '동미북',
    '동',
    '동미남',
    '동남동',
    '남동미동',
    '남동',
    '남동미남',
    '남남동',
    '남미동',
    '남',
    '남미서',
    '남남서',
    '남서미남',
    '남서',
    '남서미서',
    '서남서',
    '서미남',
    '서',
    '서미북',
    '서북서',
    '북서미서',
    '북서',
    '북서미북',
    '북북서',
    '북미서',
]
}

1;