#!/bin/perl
#open the .gpr file and parse all the file folder to search in

#if the argument don"t contain the the file and the project
my $num_args = $#ARGV+1
if($num_args <= 2) {
	print "\n Usage <project>.gpr <file_to_find> [-p platform]";
}

#open the gpr file and parse all the folder to search in 
open(FILE, $ARGV[0]) or die "Cannot open the file".$ARGV[0];
my $content; 
local $/;
#take all the content of the gpr file to parse
$content=FILE;
my string_folder;
string_folder = ($content=~/for\s*Source_Dirs\s*use\((.*)\);/gi);:w

#put all the folder in an array
 
#search in every folder the file
