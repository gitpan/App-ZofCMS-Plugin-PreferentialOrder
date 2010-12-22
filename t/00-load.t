use Test::More tests => 4;

BEGIN {
    use_ok('App::ZofCMS::Plugin::Base');
    use_ok('DBI');
    use_ok('HTML::Template'); 
	use_ok( 'App::ZofCMS::Plugin::PreferentialOrder' );
}

diag( "Testing App::ZofCMS::Plugin::PreferentialOrder $App::ZofCMS::Plugin::PreferentialOrder::VERSION, Perl $], $^X" );
