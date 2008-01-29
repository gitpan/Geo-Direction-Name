package Geo::Direction::Name::Locale::ja;

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
    '北',
    '北微東',
    '北北東',
    '北東微北',
    '北東',
    '北東微東',
    '東北東',
    '東微北',
    '東',
    '東微南',
    '東南東',
    '南東微東',
    '南東',
    '南東微南',
    '南南東',
    '南微東',
    '南',
    '南微西',
    '南南西',
    '南西微南',
    '南西',
    '南西微西',
    '西南西',
    '西微南',
    '西',
    '西微北',
    '西北西',
    '北西微北',
    '北西',
    '北西微西',
    '北北西',
    '北微西',
]
}


1;