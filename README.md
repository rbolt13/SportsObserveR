
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

## Examples

``` r
library(SportsObserveR)
```

1.  Using `scrape_nba_team_stats()`, show the totals stats table for the
    1998 Chicago Bulls.

``` r
library(SportsObserveR)
## basic example code
bulls_98 <- scrape_nba_team_stats("CHI", "1998","#totals")
utils::head(bulls_98, 10)
#>    Rk           Name Age  G GS   MP  FG  FGA   FG. X3P X3PA  X3P. X2P X2PA
#> 1   1 Michael Jordan  34 82 82 3181 881 1893 0.465  30  126 0.238 851 1767
#> 2   2  Dennis Rodman  36 80 66 2856 155  360 0.431   4   23 0.174 151  337
#> 3   3     Ron Harper  34 82 82 2284 293  665 0.441  16   84 0.190 277  581
#> 4   4     Toni Kukoč  29 74 52 2235 383  841 0.455  63  174 0.362 320  667
#> 5   5    Luc Longley  29 58 58 1703 277  609 0.455   0    0 0.000 277  609
#> 6   6 Scottie Pippen  32 44 44 1652 315  704 0.447  61  192 0.318 254  512
#> 7   7    Randy Brown  29 71  6 1147 116  302 0.384   0    5 0.000 116  297
#> 8   8     Steve Kerr  32 50  0 1119 137  302 0.454  57  130 0.438  80  172
#> 9   9  Scott Burrell  27 80  3 1096 159  375 0.424  51  144 0.354 108  231
#> 10 10   Jason Caffey  24 51  8  710 100  199 0.503   0    1 0.000 100  198
#>     X2P.  eFG.  FT FTA   FT. ORB DRB  TRB AST STL BLK TOV  PF  PTS
#> 1  0.482 0.473 565 721 0.784 130 345  475 283 141  45 185 151 2357
#> 2  0.448 0.436  61 111 0.550 421 780 1201 230  47  18 147 238  375
#> 3  0.477 0.453 162 216 0.750 107 183  290 241 108  48  91 181  764
#> 4  0.480 0.493 155 219 0.708 121 206  327 314  76  37 154 149  984
#> 5  0.455 0.455 109 148 0.736 113 228  341 161  34  62 130 206  663
#> 6  0.496 0.491 150 193 0.777  53 174  227 254  79  43 109 116  841
#> 7  0.391 0.384  56  78 0.718  34  60   94 151  71  12  63 118  288
#> 8  0.465 0.548  45  49 0.918  14  63   77  96  26   5  27  71  376
#> 9  0.468 0.492  47  64 0.734  80 118  198  65  64  37  50 131  416
#> 10 0.505 0.503  68 103 0.660  76  97  173  36  13  17  48  92  268
```

2.  Using `scrape_nba_player_stats()` to show per game stats for Allen
    Iverson.

``` r
ai <- scrape_nba_player_stats("Allen Iverson", "#per_game")
utils::head(ai, 10)
#>     Season Name  Tm  Lg Pos  G GS   MP   FG  FGA  FG. X3P X3PA X3P.  X2P X2PA
#> 1  1996-97   21 PHI NBA  PG 76 74 40.1  8.2 19.8 .416 2.0  6.0 .341  6.2 13.8
#> 2  1997-98   22 PHI NBA  PG 80 80 39.4  8.1 17.6 .461 0.9  2.9 .298  7.2 14.7
#> 3  1998-99   23 PHI NBA  SG 48 48 41.5  9.1 22.0 .412 1.2  4.1 .291  7.9 17.9
#> 4  1999-00   24 PHI NBA  SG 70 70 40.8 10.4 24.8 .421 1.3  3.7 .341  9.1 21.0
#> 5  2000-01   25 PHI NBA  SG 71 71 42.0 10.7 25.5 .420 1.4  4.3 .320  9.4 21.2
#> 6  2001-02   26 PHI NBA  SG 60 59 43.7 11.1 27.8 .398 1.3  4.5 .291  9.8 23.4
#> 7  2002-03   27 PHI NBA  SG 82 82 42.5  9.8 23.7 .414 1.0  3.7 .277  8.8 20.0
#> 8  2003-04   28 PHI NBA  SG 48 47 42.5  9.1 23.4 .387 1.2  4.1 .286  7.9 19.3
#> 9  2004-05   29 PHI NBA  PG 75 75 42.3 10.3 24.2 .424 1.4  4.5 .308  8.9 19.7
#> 10 2005-06   30 PHI NBA  PG 72 72 43.1 11.3 25.3 .447 1.0  3.1 .323 10.3 22.2
#>    X2P. eFG.  FT  FTA  FT. ORB DRB TRB AST STL BLK TOV  PF  PTS
#> 1  .448 .467 5.0  7.2 .702 1.5 2.6 4.1 7.5 2.1 0.3 4.4 3.1 23.5
#> 2  .494 .486 4.9  6.7 .729 1.1 2.6 3.7 6.2 2.2 0.3 3.1 2.5 22.0
#> 3  .440 .439 7.4  9.9 .751 1.4 3.5 4.9 4.6 2.3 0.1 3.5 2.0 26.8
#> 4  .435 .446 6.3  8.9 .713 1.0 2.8 3.8 4.7 2.1 0.1 3.3 2.3 28.4
#> 5  .441 .447 8.2 10.1 .814 0.7 3.1 3.8 4.6 2.5 0.3 3.3 2.1 31.1
#> 6  .419 .422 7.9  9.8 .812 0.7 3.8 4.5 5.5 2.8 0.2 4.0 1.7 31.4
#> 7  .440 .436 7.0  9.0 .774 0.8 3.4 4.2 5.5 2.7 0.2 3.5 1.8 27.6
#> 8  .408 .412 7.1  9.5 .745 0.7 3.0 3.7 6.8 2.4 0.1 4.4 1.8 26.4
#> 9  .451 .453 8.7 10.5 .835 0.7 3.3 4.0 7.9 2.4 0.1 4.6 1.9 30.7
#> 10 .465 .467 9.4 11.5 .814 0.6 2.6 3.2 7.4 1.9 0.1 3.4 1.7 33.0
```
