$ARGC = $#ARGV+1;
$ARGC >= 1 or die("usage : vlogint <source.v> [<signal_to_vectorize> ...]");

open(SOURCE,"<".$ARGV[0]) or die;

# @vectors = ( "xd", "xma", "xdbrl" );

while(<SOURCE>) {
	chop;
	$line = $_;
	if ($line =~ m/ut ([^ ,]+)(,*)/) {
		$port = $1;
		$comma = $2;
		print "\t.$port(";
		for $n (1 .. $#ARGV) {
			$vec = $ARGV[$n];
			$port =~ s/($vec)_([0-9]+)_(.+)$/$1_$3\[$2\]/;
			$port =~ s/($vec)_([0-9]+)/$1\[$2\]/;
		}
		print "j_$port)$comma\n";
	}
	
	if ($line =~ m/;/) {
		last;
	}
}

close(SOURCE);
