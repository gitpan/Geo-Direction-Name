use strict;
use Test::Base;
plan tests => 5;

use Geo::Direction::Name;

eval { Geo::Direction::Name->new("bb_BB"); };
is $@, "Geo::Direction::Name not support this locale now: bb_BB at t/03.error.t line 7\n";

my $dobj = Geo::Direction::Name->new;

eval { $dobj->to_string("aaa"); };
is $@, "Direction value must be a number at t/03.error.t line 12\n";

eval { $dobj->to_string(180.0,{abbreviation => 2}); };
is $@, "Abbreviation parameter must be 0 or 1 at t/03.error.t line 15\n";

eval { $dobj->to_string(180.0,{devide => 5}); };
is $@, "Devide parameter must be 4, 8, 16 or 32 at t/03.error.t line 18\n";

is $dobj->from_string("foo"), undef;
