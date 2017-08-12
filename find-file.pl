#!/bin/perl
#open the .gpr file and parse all the file folder to search in

#if the argument don"t contain the the file and the project
my $num_args = $#ARGV+1
if($num_args <= 2 || $num_args>3) {
    print "\nUsage <project>.gpr <file_to_find> [-p platform]";
}
#open the gpr file and parse all the folder to search in 
open(FILE, $ARGV[0]) or die "Cannot open the file".$ARGV[0];
my $content; 
local $/;
#take all the content of the gpr file to parse
$content=FILE;
#if no platform specified (only 1 platform for the compilation)
if($num_args==2) { 
#take all the folder used in the gpr file
    my @string_folder;
    @string_folder = ($content=~ /for\s+Source_Dirs\s+use\((.*)\);/gi);
    if($#string_folder != 1) {
	print "\nthere is more than one platform specified for the compilation";
    }
    else {
	print "\nParsing the sources list ...";
	#TODO parse $string_folder[0] here 
    }
}
#if $num_args==3
#parse the platfrom name and receive the corresponding folder list
else  {
    my @sring_folder; 
    @string_folder = ($content=~ /\s*case\s+\(*\w+\)*\s+when\s+$ARGV[2]\s+=>\s+for\+*Source_Dirs\s+use\((.*)\);/gi);
}

#put all the folder in an array
 
#search in every folder the file
