#!/usr/bin/env perl

use strict;
use warnings; 

use Test::More;

my $version = '0.0104';
eval "use App::ZofCMS::Test::Plugin $version;";
plan skip_all
=> "App::ZofCMS::Test::Plugin version $version is required for testing plugin"
    if $@;

plugin_ok(
    'PreferentialOrder',
    { plug_preferential_order => {
        items => [
            forum3  => '<a href="#">Forum3</a>',
            forum4  => [ 'Last forum ":)"',   \'forum-template.tmpl', ],
            forum   => [ 'First forum ":)"',  '<a href="#">Forum</a>',  ],
            forum2  => [
                'Second forum ":)"',
                sub {
                    my ( $t, $q, $config ) = @_;
                    return '$value_for_the_second_element_in_the_arrayref';
                },
            ],
        ],
    }},
    {},
    { plug_preferential_order => { has_disabled => 1 } },
);
