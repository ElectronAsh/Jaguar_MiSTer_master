$ARGC = $#ARGV+1;
$ARGC >= 1 or die("usage : bin2txt source.bin");

open(SOURCE,"<".$ARGV[0]) or die;
binmode(SOURCE);
while(sysread(SOURCE, $buf,4)) {
	$buf = unpack("H8",$buf);
	print("$buf\n");
}
close(SOURCE);
