#!/usr/bin/env perl

use strict;
use warnings;
use lib 't/lib';
use Test::More 'no_plan';

use Catalyst::Test 'TestApp';

my $res = request('/');

is($res->content, <<EOF, 'fetch correct UL element');
<ul class="navmenu" id="navlist">
    <li><span class="menulabel">Main</span><ul>
            <li title="A public function"><a href="http://localhost/public">Public</a></li>
        </ul>
    </li>
    <li title="About us"><a href="http://localhost/about/us">About us</a></li>
</ul>
EOF
