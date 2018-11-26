$ARGC = $#ARGV+1;
$ARGC >= 1 or die("usage : bin2mif source.bin");

$size = -s $ARGV[0];

open(SOURCE,"<".$ARGV[0]) or die;
binmode(SOURCE);

$address = 0;

print "WIDTH = 32;\n";
print "DEPTH = 1024;\n";
print "ADDRESS_RADIX = HEX;\n";
print "DATA_RADIX = HEX;\n";
print "CONTENT\n";
print "BEGIN\n";

while(sysread(SOURCE, $buf,4)) {
	$buf = unpack("H8",$buf);
	printf("%04X : ", $address);
	print("$buf;\n");
	$address++;
}
print "END;\n";
close(SOURCE);
