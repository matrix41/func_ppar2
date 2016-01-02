#!/usr/bin/perl -w
package func_ppar2;
use strict;
use warnings;

use Tie::IxHash;
use Exporter;

our @ISA = qw( Exporter );
our @EXPORT = qw( make_edm );


sub make_edm {

    # Define 
    my $objectid;
    my $inputkey;
    my $key;
    my $inputvalue;
    my $value;

    # Step 0 of 3: Get passed arguments (the hash) from calling program here.  
    # The hash will be passed by value.  
    my ( %inbound_hash ) = @_;

# Sanity check.  Test print hash to verify it was passed into subroutine
    # while ( my ( $key, $value ) = each( %inbound_hash ) ) 
    # {
    #     print "FUNCPPAR2 $key $value|";
    # }


    # Step 1 of 3: Initialize the hash and tie it (ie to preserve insertion order)
    # note to self: awk '{printf "$hash{%s} = \x27null\x27;\n", $2}' exop_lit_ppar.tbl
    tie my %hash, "Tie::IxHash" or die "could not tie %hash";

    $hash{plnletter} = 'null';
    $hash{plnorbper} = 'null';
    $hash{plnorbpererr1} = 'null';
    $hash{plnorbpererr2} = 'null';
    $hash{plnorbperlim} = 'null';
    $hash{plnorbsmax} = 'null';
    $hash{plnorbsmaxerr1} = 'null';
    $hash{plnorbsmaxerr2} = 'null';
    $hash{plnorbsmaxlim} = 'null';
    $hash{plnorbincl} = 'null';
    $hash{plnorbinclerr1} = 'null';
    $hash{plnorbinclerr2} = 'null';
    $hash{plnorbincllim} = 'null';
    $hash{plnorbtper} = 'null';
    $hash{plnorbtpererr1} = 'null';
    $hash{plnorbtpererr2} = 'null';
    $hash{plnorbtperlim} = 'null';
    $hash{plntsystemref} = 'null';
    $hash{plnorbeccen} = 'null';
    $hash{plnorbeccenerr1} = 'null';
    $hash{plnorbeccenerr2} = 'null';
    $hash{plnorbeccenlim} = 'null';
    $hash{plnorblper} = 'null';
    $hash{plnorblpererr1} = 'null';
    $hash{plnorblpererr2} = 'null';
    $hash{plnorblperlim} = 'null';
    $hash{plnorbdate} = 'null';
    $hash{plnorbmethod} = 'null';
    $hash{plnrvamp} = 'null';
    $hash{plnrvamperr1} = 'null';
    $hash{plnrvamperr2} = 'null';
    $hash{plnrvamplim} = 'null';
    $hash{plnmsinij} = 'null';
    $hash{plnmsinijerr1} = 'null';
    $hash{plnmsinijerr2} = 'null';
    $hash{plnmsinijlim} = 'null';
    $hash{plnmsinie} = 'null';
    $hash{plnmsinieerr1} = 'null';
    $hash{plnmsinieerr2} = 'null';
    $hash{plnmsinielim} = 'null';
    $hash{plnmassj} = 'null';
    $hash{plnmassjerr1} = 'null';
    $hash{plnmassjerr2} = 'null';
    $hash{plnmassjlim} = 'null';
    $hash{plnmasse} = 'null';
    $hash{plnmasseerr1} = 'null';
    $hash{plnmasseerr2} = 'null';
    $hash{plnmasselim} = 'null';
    $hash{plnradj} = 'null';
    $hash{plnradjerr1} = 'null';
    $hash{plnradjerr2} = 'null';
    $hash{plnradjlim} = 'null';
    $hash{plnrade} = 'null';
    $hash{plnradeerr1} = 'null';
    $hash{plnradeerr2} = 'null';
    $hash{plnradelim} = 'null';
    $hash{plnrads} = 'null';
    $hash{plnradserr1} = 'null';
    $hash{plnradserr2} = 'null';
    $hash{plnradslim} = 'null';
    $hash{plndens} = 'null';
    $hash{plndenserr1} = 'null';
    $hash{plndenserr2} = 'null';
    $hash{plndenslim} = 'null';
    $hash{plneqt} = 'null';
    $hash{plneqterr1} = 'null';
    $hash{plneqterr2} = 'null';
    $hash{plneqtlim} = 'null';
    $hash{plntrandep} = 'null';
    $hash{plntrandeperr1} = 'null';
    $hash{plntrandeperr2} = 'null';
    $hash{plntrandeplim} = 'null';
    $hash{plntrandurd} = 'null';
    $hash{plntrandurderr1} = 'null';
    $hash{plntrandurderr2} = 'null';
    $hash{plntrandurdlim} = 'null';
    $hash{plntrandurh} = 'null';
    $hash{plntrandurherr1} = 'null';
    $hash{plntrandurherr2} = 'null';
    $hash{plntrandurhlim} = 'null';
    $hash{plntranmid} = 'null';
    $hash{plntranmiderr1} = 'null';
    $hash{plntranmiderr2} = 'null';
    $hash{plntranmidlim} = 'null';
    $hash{plnimppar} = 'null';
    $hash{plnimpparerr1} = 'null';
    $hash{plnimpparerr2} = 'null';
    $hash{plnimpparlim} = 'null';
    $hash{plnoccdep} = 'null';
    $hash{plnoccdeperr1} = 'null';
    $hash{plnoccdeperr2} = 'null';
    $hash{plnoccdeplim} = 'null';
    $hash{plnratdor} = 'null';
    $hash{plnratdorerr1} = 'null';
    $hash{plnratdorerr2} = 'null';
    $hash{plnratdorlim} = 'null';
    $hash{plnratror} = 'null';
    $hash{plnratrorerr1} = 'null';
    $hash{plnratrorerr2} = 'null';
    $hash{plnratrorlim} = 'null';
    $hash{plninsol} = 'null';
    $hash{plninsolerr1} = 'null';
    $hash{plninsolerr2} = 'null';
    $hash{plninsollim} = 'null';
    $hash{plnblend} = 'null';
    $hash{plnrefid} = 'null';

# This @base_stem array keeps track of all the base parameter names 
    my @base_stem;
    push(@base_stem, "plnorbper");
    push(@base_stem, "plnorblper");
    push(@base_stem, "plnorbtper");
    push(@base_stem, "plnorbsmax");
    push(@base_stem, "plnorbincl");
    push(@base_stem, "plnorbeccen");
    push(@base_stem, "plnrvamp");
    push(@base_stem, "plnmsinij");
    push(@base_stem, "plnmsinie");
    push(@base_stem, "plnmassj");
    push(@base_stem, "plnmasse");
    push(@base_stem, "plnradj");
    push(@base_stem, "plnrade");
    push(@base_stem, "plndens");
    push(@base_stem, "plneqt");
    push(@base_stem, "plntrandep");
    push(@base_stem, "plntrandurd");
    push(@base_stem, "plntrandurh");
    push(@base_stem, "plntranmid");
    push(@base_stem, "plnimppar");
    push(@base_stem, "plnratdor");
    push(@base_stem, "plnratror");
    push(@base_stem, "plninsol");

    my @tertiary;
    push(@tertiary, "err1");
    push(@tertiary, "err2");
    push(@tertiary, "lim");


    # Step 2b of 3: Build a planet name (also using a space character) 
    my $filename_a = $inbound_hash{'plnname'};
    my $filename_b = $inbound_hash{'plnletter'};
    my $planetname = "$filename_a"." $filename_b";
    print "$planetname\n";


    # Step 2c of 3: Build a file name (by replacing the space character with an underscore character)
#    my $filename_c = $filename_a =~ s/\s+/_/gr; # <--- the original line
    my $filename_c = $filename_a =~ s/\s+/_/g; # <--- the original line

#    my $filename = "$filename_c"."_"."$filename_b.planet"; # <--- original line 
    my $filename = "$filename_a"."_"."$filename_b.planet";
#    print "\n$filename\n";

    my $inbound_key;
    my $inbound_value;
    # Step 2d of 3: This nested WHILE-loop will match the keys in inbound_hash 
    # against the keys in hash. 
    while ( ($inbound_key, $inbound_value) = each(%inbound_hash) ) 
    {
      while ( ($key, $value) = each(%hash) ) {
    #       if ( $inputkey =~ $key  ) { # NO!! This does not do an exact match.
            if ( $inbound_key =~ /^$key$/ ) { # YES. This will do an exact match.
                $hash{ $inbound_key } = $inbound_value;
            }
        } # end of inner WHILE-loop 
    } # end of infinite outer WHILE-loop


# Sanity check.  Test print hash to verify the matching was done correctly.  
    # while ( my ( $key, $value ) = each( %hash ) ) 
    # {
    #     print "WAYPOINT I  $key $value|\n";
    # }

    # print 'Enter key and value pair (separated by a space); enter \'quit\' to exit) =>';
    # print "\n";
    # my $str = <STDIN>;
    # chomp $str;
    # ( $inputkey, $inputvalue ) = split / /, $str;
    # if ($inputkey eq 'quit') {
    #     last;
    # }

    # # Error checking.  Make sure the user-input key (inputkey) 
    # # matches parameter keys in the hash function.  Use WHILE-loop 
    # # to iterate through the entire hash function. 
    #     my $match = 0; # this variable flag tracks the matching status
    #                    # 0 == no match ; 1 == match 
    #                    while ( ($key, $value) = each(%hash) ) {
    # #       if ( $inputkey =~ $key  ) { # NO!! This does not do an exact match.
    #         if ( $inputkey =~ /^$key$/ ) { # YES. This will do an exact match.
    #             $hash{ $inputkey } = $inputvalue;
    #             $match = 1; 
    #         }
    #     } # end of inner WHILE-loop 
    #     if ( $match == 0 ) {
    #         print "\n";
    #         print "No match found for input key: $inputkey\n";
    #         print "\n";
    #     }



    # Step 3 of 3: Print the hash function out to a file in the correct format 

    # Step 3a of 3: Parse time and date 
    # sec,     # seconds of minutes from 0 to 61
    # min,     # minutes of hour from 0 to 59
    # hour,    # hours of day from 0 to 24
    # mday,    # day of month from 1 to 31
    # mon,     # month of year from 0 to 11
    # year,    # year since 1900
    # wday,    # days since sunday
    # yday,    # days since January 1st
    # isdst    # hours of daylight savings time
    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

    # Step 3b of 3: Create output filename from time and date elements 
    # note to self: use sprintf, not printf. otherwise using printf will 
    # return 1 because the 1 is the true return value from printf which 
    # gets assigned to $filename after printf has printed the string. 
    # my $filename  = sprintf ("ppar_%04d-%02d-%02d-%02d-%02d-%02d.planet", $year+1900,$mon+1,$mday,$hour,$min,$sec);

    # Step 3c of 3: Create file handle for the output file 
    open (my $fh, '>', $filename) or die "Could not open file '$filename' $!\n";

    # Step 3d of 3: Print header information to screen 
    print   "USER:            raymond\n";
    print   "BUILD:           6.3\n";
    printf  "DESCRIPTION:     Stellar/Planetary Parameters Additions and Updates\n";
    print   "FILETYPE:        edm\n";
    printf ("FILENAME:        %s\n", $filename);
    printf ("DATE:            %04d-%02d-%02d %02d:%02d:%02d\n", $year+1900,$mon+1,$mday,$hour,$min,$sec);
    printf  "#                                            \n";
    printf  "# Addition of planet parameter values\n";
    printf  "#                                            \n";

    # Step 3e of 3: Print header information to file 
    print  $fh  "USER:            raymond\n";
    print  $fh  "BUILD:           6.3\n";
    printf $fh  "DESCRIPTION:     Stellar/Planetary Parameters Additions and Updates\n";
    print  $fh  "FILETYPE:        edm\n";
    printf $fh ("FILENAME:        %s\n", $filename);
    printf $fh ("DATE:            %04d-%02d-%02d %02d:%02d:%02d\n", $year+1900,$mon+1,$mday,$hour,$min,$sec);
    printf $fh  "#                                    \n";
    printf $fh  "# Addition of planet parameter values\n";
    printf $fh  "#                                    \n";


    # Step 3g of 3: Now output all the planet parameters 
    print     "EDMT|planet|$planetname|add|\n";
    print $fh "EDMT|planet|$planetname|add|\n";
    foreach my $base ( @base_stem ) 
    {
      if ( $hash{$base} !~ /null/ )
      {
        print     "$base $hash{$base} | ";
        print $fh "$base $hash{$base} | ";
        foreach my $append (@tertiary)
        {
          my $fullname = "$base"."$append";
          print     "$fullname $hash{$fullname} | ";
          print $fh "$fullname $hash{$fullname} | ";
        }
        print     "\n";
        print $fh "\n";
      }
    }
    print     "plntsystemref $hash{'plntsystemref'} | plnorbmethod $hash{'plnorbmethod'} | plnblend $hash{'plnblend'} | plnrefid $hash{'plnrefid'} |";
    print $fh "plntsystemref $hash{'plntsystemref'} | plnorbmethod $hash{'plnorbmethod'} | plnblend $hash{'plnblend'} | plnrefid $hash{'plnrefid'} |";
    print     "\n"; # need to use this so the command prompt displays correctly 
    print $fh "\n"; # need to use this so the command prompt displays correctly

#    die;


} # end function make_edm

1;
