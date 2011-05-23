#!/usr/local/bin/perl

opendir(DIR, ".");
  @files = grep(/\.xml$/,readdir(DIR));
closedir(DIR);

foreach $file (@files) {

   # sed command 
   $sed = "sed -i .orig 's#spase://VHO/Instrument/ACE/EPAM#spase://SMWG/Instrument/ACE/EPAM#g' $file";
   
   # execute sed command
   print "$file\n";
   system "$sed"; 

} # end loop over all files
