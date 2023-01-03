
# SportsObserveR

The goal of SportsObserveR is to scrape data off
[Sports-Reference](https://www.sports-reference.com/).

- Project Status: \[Under Construction\]

## Installation

You can install the development version of SportsObserveR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rbolt13/SportsObserveR")
```

## Example

This is a basic example which shows you how to scrape totals data for
the 1998 Chicago Bulls:

``` r
library(SportsObserveR)
## basic example code
scrape_nba_team_stats("CHI", "1998","#totals")
#>    Rk            Name Age  G GS    MP   FG  FGA   FG. X3P X3PA  X3P.  X2P X2PA
#> 1   1  Michael Jordan  34 82 82  3181  881 1893 0.465  30  126 0.238  851 1767
#> 2   2   Dennis Rodman  36 80 66  2856  155  360 0.431   4   23 0.174  151  337
#> 3   3      Ron Harper  34 82 82  2284  293  665 0.441  16   84 0.190  277  581
#> 4   4      Toni Kukoč  29 74 52  2235  383  841 0.455  63  174 0.362  320  667
#> 5   5     Luc Longley  29 58 58  1703  277  609 0.455   0    0 0.000  277  609
#> 6   6  Scottie Pippen  32 44 44  1652  315  704 0.447  61  192 0.318  254  512
#> 7   7     Randy Brown  29 71  6  1147  116  302 0.384   0    5 0.000  116  297
#> 8   8      Steve Kerr  32 50  0  1119  137  302 0.454  57  130 0.438   80  172
#> 9   9   Scott Burrell  27 80  3  1096  159  375 0.424  51  144 0.354  108  231
#> 10 10    Jason Caffey  24 51  8   710  100  199 0.503   0    1 0.000  100  198
#> 11 11    Jud Buechler  29 74  0   608   85  176 0.483  25   65 0.385   60  111
#> 12 12 Bill Wennington  34 48  8   467   75  172 0.436   0    0 0.000   75  172
#> 13 13      Joe Kleine  36 46  1   397   39  106 0.368   0    0 0.000   39  106
#> 14 14 Dickey Simpkins  25 21  0   237   26   41 0.634   0    1 0.000   26   40
#> 15 15     Rusty LaRue  24 14  0   140   20   49 0.408   4   16 0.250   16   33
#> 16 16     Keith Booth  23  6  0    17    2    6 0.333   0    1 0.000    2    5
#> 17 17    David Vaughn  24  3  0     6    1    1 1.000   0    0 0.000    1    1
#> 18  0                   0 82  0 19855 3064 6801 0.451 311  962 0.323 2753 5839
#>     X2P.  eFG.   FT  FTA   FT.  ORB  DRB  TRB  AST STL BLK  TOV   PF  PTS
#> 1  0.482 0.473  565  721 0.784  130  345  475  283 141  45  185  151 2357
#> 2  0.448 0.436   61  111 0.550  421  780 1201  230  47  18  147  238  375
#> 3  0.477 0.453  162  216 0.750  107  183  290  241 108  48   91  181  764
#> 4  0.480 0.493  155  219 0.708  121  206  327  314  76  37  154  149  984
#> 5  0.455 0.455  109  148 0.736  113  228  341  161  34  62  130  206  663
#> 6  0.496 0.491  150  193 0.777   53  174  227  254  79  43  109  116  841
#> 7  0.391 0.384   56   78 0.718   34   60   94  151  71  12   63  118  288
#> 8  0.465 0.548   45   49 0.918   14   63   77   96  26   5   27   71  376
#> 9  0.468 0.492   47   64 0.734   80  118  198   65  64  37   50  131  416
#> 10 0.505 0.503   68  103 0.660   76   97  173   36  13  17   48   92  268
#> 11 0.541 0.554    3    6 0.500   24   53   77   49  22  15   21   47  198
#> 12 0.436 0.436   17   21 0.810   32   48   80   19   4   5   16   77  167
#> 13 0.368 0.368   15   18 0.833   27   50   77   30   4   5   28   63   93
#> 14 0.650 0.634   26   44 0.591    8   23   31   17   4   3   13   35   78
#> 15 0.485 0.449    5    8 0.625    1    7    8    5   3   1    6   12   49
#> 16 0.400 0.333    6    6 1.000    2    2    4    1   0   0    3    3   10
#> 17 1.000 1.000    2    4 0.500    0    1    1    0   0   0    0    1    4
#> 18 0.471 0.473 1492 2009 0.743 1243 2438 3681 1952 696 353 1178 1691 7931
```
