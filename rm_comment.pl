#!/usr/bin/env perl
use Regexp::Common;
#$string =~ s/$RE{comment}{C}//g;

my $string = "/* Test program */ \n 
// File \n
// Loca \n
 int main()  \n 
 {           \n
   // variable declaration \n
   int a, b, c;  // 123  \n
   /* This is a test  \n
      multiline     \n
      comment for   \n
      testing */      \n
  /* This is a test  \n
   *   multiline     \n
   *   comment for   \n
   *   testing  \n
   */ \n
   int x = 123;    \n
  /* *This is a test** */ \n
   // *  multiline     \n
   // *  comment for   \n
   //  * testing       \n
   a = b + c;       \n
 } \n";

my $rmComment = $string;
$rmComment =~ s/((?:\/\*(?:[^*]|(?:\*+[^*\/]))*\*+\/)|(?:\/\/.*))//g;
$rmComment = $rmComment . "last\n";
printf("%s",$rmComment);

exit 0;
