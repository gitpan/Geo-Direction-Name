package Geo::Direction::Name::Locale::en;

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
    'North',
    'North by east',
    'North-northeast',
    'Northeast by north',
    'Northeast',
    'Northeast by east',
    'East-northeast',
    'East by north',
    'East',
    'East by south',
    'East-southeast',
    'Southeast by east',
    'Southeast',
    'Southeast by south',
    'South-southeast',
    'South by east',
    'South',
    'South by west',
    'South-southwest',
    'Southwest by south',
    'Southwest',
    'Southwest by west',
    'West-southwest',
    'West by south',
    'West',
    'West by north',
    'West-northwest',
    'Northwest by west',
    'Northwest',
    'Northwest by north',
    'North-northwest',
    'North by west',
]
}

sub abbr_string {
[
    'N',
    'NbE',
    'NNE',
    'NEbN',
    'NE',
    'NEbE',
    'ENE',
    'EbN',
    'E',
    'EbS',
    'ESE',
    'SEbE',
    'SE',
    'SEbS',
    'SSE',
    'SbE',
    'S',
    'SbW',
    'SSW',
    'SWbS',
    'SW',
    'SWbW',
    'WSW',
    'WbS',
    'W',
    'WbN',
    'WNW',
    'NWbW',
    'NW',
    'NWbN',
    'NNW',
    'NbW',
]
}


1;