#!/bin/perl

#Read argument 
my $nb_args = $#ARGV+1;
if($nb_args != 1) {
    print "\n Usage : ./read_stack.pl <log_file>";
    exit;
}
#open the logfile and get the constraint error raised 

open(FILE, $ARGV[0]) or die "Cannot open the logfile".$ARGV[0];

my $content;
local $/;

$content=FILE;

my @exception;
@exception = ($content=~ /-+\s+raised [\.\w\s:]+\s*Call stack traceback locations:\s* ([0x[\dabcdef][\dabcdef][\dabcdef][\dabcdef][\dabcdef][\dabcdef] ]/));
my $i;
foreach $i (@exception) {
    print "$i\n";
}
