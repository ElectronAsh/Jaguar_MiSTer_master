$ARGC = $#ARGV+1;
$ARGC >= 1 or die("usage : bin2mif source.bin");

$size = -s $ARGV[0];

$depth = $ARGV[1];

open(SOURCE,"<".$ARGV[0]) or die;
binmode(SOURCE);

$address = 0;

print "WIDTH = 8;\n";
print "DEPTH = $depth;\n";
print "ADDRESS_RADIX = HEX;\n";
print "DATA_RADIX = HEX;\n";
print "CONTENT\n";
print "BEGIN\n";

while(sysread(SOURCE, $buf,1)) {
	$buf = unpack("H2",$buf);
	printf(" %X : ", $address);
	print("$buf;\n");
	$address++;
}
while($address < $depth) {
	printf(" %X : ", $address);
	print("00;\n");
	$address++;
}
print "END;\n";
close(SOURCE);
