use strict;
use Test::Base;
plan tests => 1 * blocks;

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
    my ($str,$abbr) = split(/\n/,$block->input);
    my ($dir)       = split(/\n/,$block->expected);

    my $dobj        = Geo::Direction::Name->new("ja_JP");

    is sprintf("%.3f",$dobj->from_string($str)),  sprintf("%.3f",$dir);
};

__END__
===
--- input
北
--- expected
0.000

===
--- input
北微東
--- expected
11.250

===
--- input
北北東
--- expected
22.500

===
--- input
北東微北
--- expected
33.750

===
--- input
北東
--- expected
45.000

===
--- input
北東微東
--- expected
56.250

===
--- input
東北東
--- expected
67.500

===
--- input
東微北
--- expected
78.750

===
--- input
東
--- expected
90.000

===
--- input
東微南
--- expected
101.250

===
--- input
東南東
--- expected
112.500

===
--- input
南東微東
--- expected
123.750

===
--- input
南東
--- expected
135.000

===
--- input
南東微南
--- expected
146.250

===
--- input
南南東
--- expected
157.500

===
--- input
南微東
--- expected
168.750

===
--- input
南
--- expected
180.000

===
--- input
南微西
--- expected
191.250

===
--- input
南南西
--- expected
202.500

===
--- input
南西微南
--- expected
213.750

===
--- input
南西
--- expected
225.000

===
--- input
南西微西
--- expected
236.250

===
--- input
西南西
--- expected
247.500

===
--- input
西微南
--- expected
258.750

===
--- input
西
--- expected
270.000

===
--- input
西微北
--- expected
281.250

===
--- input
西北西
--- expected
292.500

===
--- input
北西微北
--- expected
303.750

===
--- input
北西
--- expected
315.000

===
--- input
北西微西
--- expected
326.250

===
--- input
北北西
--- expected
337.500

===
--- input
北微西
--- expected
348.750

