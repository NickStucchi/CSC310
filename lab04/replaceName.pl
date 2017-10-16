#!/usr/bin/env perl
use warnings;

# Nick Stucchi
# 10/16/2017
# Program that makes a modified copy of a text file

# Sample Program 1

open FILE, "< test.txt";
@lines = ;
close FILE;

$count = 0;
foreach(@lines){
   $count++;
   if(/-/){
      print "Line number " . $count . " has an address\n";
   }
   else{
      print "Line number " . $count . " does not have an address\n";
   }
}

# Sample Program 2

# command line parameters are in @ARGV
# remember if(-e "filename.txt") checks if file exists
# die() ... open FILE, "whatever.txt" or die();

if( !defined($ARGV[2]) ){
   $outfile = "test2.modified.txt";
}
else{
   $outfile = $ARGV[2];
}

open FILE, "< somethingelse.txt" or die("File not found");
@lines = ;
close FILE;

open OUT, ">", $outfile;
foreach my $line (@lines){
   $line =~ s/-name-/$ARGV[0]/g;
   $line =~ s/-money-/\$$ARGV[1]/g;
   print OUT $line;
}
close OUT;
