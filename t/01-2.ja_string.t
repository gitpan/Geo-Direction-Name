use strict;
use Test::Base;
plan tests => 2 * blocks;

use Geo::Direction::Name;

BEGIN
{
    if ( $] >= 5.006 )
    {
        require utf8; import utf8;
    }
}

run {
    my $block       = shift;
    my ($dir,$dev)  = split(/\n/,$block->input);
    my ($str)       = split(/\n/,$block->expected);

    my $dobj        = Geo::Direction::Name->new("ja_JP");

    is $dobj->to_string($dir,{ devide => $dev, abbreviation => 0 }) ,$str;
    is $dobj->to_string($dir,{ devide => $dev, abbreviation => 1 }) ,$str;
};

__END__
===
--- input
0.000
4
--- expected
北

===
--- input
0.000
8
--- expected
北

===
--- input
0.000
16
--- expected
北

===
--- input
0.000
32
--- expected
北

===
--- input
11.250
4
--- expected
北

===
--- input
11.250
8
--- expected
北

===
--- input
11.250
16
--- expected
北北東

===
--- input
11.250
32
--- expected
北微東

===
--- input
22.500
4
--- expected
北

===
--- input
22.500
8
--- expected
北東

===
--- input
22.500
16
--- expected
北北東

===
--- input
22.500
32
--- expected
北北東

===
--- input
33.750
4
--- expected
北

===
--- input
33.750
8
--- expected
北東

===
--- input
33.750
16
--- expected
北東

===
--- input
33.750
32
--- expected
北東微北

===
--- input
45.000
4
--- expected
東

===
--- input
45.000
8
--- expected
北東

===
--- input
45.000
16
--- expected
北東

===
--- input
45.000
32
--- expected
北東

===
--- input
56.250
4
--- expected
東

===
--- input
56.250
8
--- expected
北東

===
--- input
56.250
16
--- expected
東北東

===
--- input
56.250
32
--- expected
北東微東

===
--- input
67.500
4
--- expected
東

===
--- input
67.500
8
--- expected
東

===
--- input
67.500
16
--- expected
東北東

===
--- input
67.500
32
--- expected
東北東

===
--- input
78.750
4
--- expected
東

===
--- input
78.750
8
--- expected
東

===
--- input
78.750
16
--- expected
東

===
--- input
78.750
32
--- expected
東微北

===
--- input
90.000
4
--- expected
東

===
--- input
90.000
8
--- expected
東

===
--- input
90.000
16
--- expected
東

===
--- input
90.000
32
--- expected
東

===
--- input
101.250
4
--- expected
東

===
--- input
101.250
8
--- expected
東

===
--- input
101.250
16
--- expected
東南東

===
--- input
101.250
32
--- expected
東微南

===
--- input
112.500
4
--- expected
東

===
--- input
112.500
8
--- expected
南東

===
--- input
112.500
16
--- expected
東南東

===
--- input
112.500
32
--- expected
東南東

===
--- input
123.750
4
--- expected
東

===
--- input
123.750
8
--- expected
南東

===
--- input
123.750
16
--- expected
南東

===
--- input
123.750
32
--- expected
南東微東

===
--- input
135.000
4
--- expected
南

===
--- input
135.000
8
--- expected
南東

===
--- input
135.000
16
--- expected
南東

===
--- input
135.000
32
--- expected
南東

===
--- input
146.250
4
--- expected
南

===
--- input
146.250
8
--- expected
南東

===
--- input
146.250
16
--- expected
南南東

===
--- input
146.250
32
--- expected
南東微南

===
--- input
157.500
4
--- expected
南

===
--- input
157.500
8
--- expected
南

===
--- input
157.500
16
--- expected
南南東

===
--- input
157.500
32
--- expected
南南東

===
--- input
168.750
4
--- expected
南

===
--- input
168.750
8
--- expected
南

===
--- input
168.750
16
--- expected
南

===
--- input
168.750
32
--- expected
南微東

===
--- input
180.000
4
--- expected
南

===
--- input
180.000
8
--- expected
南

===
--- input
180.000
16
--- expected
南

===
--- input
180.000
32
--- expected
南

===
--- input
191.250
4
--- expected
南

===
--- input
191.250
8
--- expected
南

===
--- input
191.250
16
--- expected
南南西

===
--- input
191.250
32
--- expected
南微西

===
--- input
202.500
4
--- expected
南

===
--- input
202.500
8
--- expected
南西

===
--- input
202.500
16
--- expected
南南西

===
--- input
202.500
32
--- expected
南南西

===
--- input
213.750
4
--- expected
南

===
--- input
213.750
8
--- expected
南西

===
--- input
213.750
16
--- expected
南西

===
--- input
213.750
32
--- expected
南西微南

===
--- input
225.000
4
--- expected
西

===
--- input
225.000
8
--- expected
南西

===
--- input
225.000
16
--- expected
南西

===
--- input
225.000
32
--- expected
南西

===
--- input
236.250
4
--- expected
西

===
--- input
236.250
8
--- expected
南西

===
--- input
236.250
16
--- expected
西南西

===
--- input
236.250
32
--- expected
南西微西

===
--- input
247.500
4
--- expected
西

===
--- input
247.500
8
--- expected
西

===
--- input
247.500
16
--- expected
西南西

===
--- input
247.500
32
--- expected
西南西

===
--- input
258.750
4
--- expected
西

===
--- input
258.750
8
--- expected
西

===
--- input
258.750
16
--- expected
西

===
--- input
258.750
32
--- expected
西微南

===
--- input
270.000
4
--- expected
西

===
--- input
270.000
8
--- expected
西

===
--- input
270.000
16
--- expected
西

===
--- input
270.000
32
--- expected
西

===
--- input
281.250
4
--- expected
西

===
--- input
281.250
8
--- expected
西

===
--- input
281.250
16
--- expected
西北西

===
--- input
281.250
32
--- expected
西微北

===
--- input
292.500
4
--- expected
西

===
--- input
292.500
8
--- expected
北西

===
--- input
292.500
16
--- expected
西北西

===
--- input
292.500
32
--- expected
西北西

===
--- input
303.750
4
--- expected
西

===
--- input
303.750
8
--- expected
北西

===
--- input
303.750
16
--- expected
北西

===
--- input
303.750
32
--- expected
北西微北

===
--- input
315.000
4
--- expected
北

===
--- input
315.000
8
--- expected
北西

===
--- input
315.000
16
--- expected
北西

===
--- input
315.000
32
--- expected
北西

===
--- input
326.250
4
--- expected
北

===
--- input
326.250
8
--- expected
北西

===
--- input
326.250
16
--- expected
北北西

===
--- input
326.250
32
--- expected
北西微西

===
--- input
337.500
4
--- expected
北

===
--- input
337.500
8
--- expected
北

===
--- input
337.500
16
--- expected
北北西

===
--- input
337.500
32
--- expected
北北西

===
--- input
348.750
4
--- expected
北

===
--- input
348.750
8
--- expected
北

===
--- input
348.750
16
--- expected
北

===
--- input
348.750
32
--- expected
北微西

===
--- input
360.000
4
--- expected
北

===
--- input
360.000
8
--- expected
北

===
--- input
360.000
16
--- expected
北

===
--- input
360.000
32
--- expected
北
