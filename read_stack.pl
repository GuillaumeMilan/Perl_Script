#!/usr/bin/perl

#Read argument 
my $nb_args = $#ARGV+1;
if($nb_args != 1) {
    print "Usage : ./read_stack.pl <log_file>\n";
    exit;
}
#open the logfile and get the constraint error raised 

open(FILE, $ARGV[0]) or die "Cannot open the logfile".$ARGV[0];

my $content;
local $/;

$content=<FILE>;
my @exception;
#We gonna multiple regex to print the result clearly 
@exception = ($content=~ /-+.*(0x[\da-fA-F]{0,8})-+/gi);
my $i;
foreach $i (@exception) {
    print "$i\n";
}
