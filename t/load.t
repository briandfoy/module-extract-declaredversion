BEGIN {
	@classes = qw(Module::Extract::DeclaredMinimumPerl);
	}

use Test::More tests => scalar @classes;

foreach my $class ( @classes ) {
	use Test::Needs "$class";
	print "Bail out! $class did not compile\n" unless use_ok( $class );
	}
