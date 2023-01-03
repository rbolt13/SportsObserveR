#' Scrapes NBA team stats tables off basketball-reference.com.
#'
#'@import rvest 
#'@import magrittr
#'
#'@param slug is a char string that corresponds to the sports team.
#'@param year is a char string that corresponds to the playoff year. 
#'@param stats_tb is a char string that corresponds to the statistics table such as #per_game, #totals, #per_36_minutes, and #advanced.
#'
#'@return a data frame of statistics for a specific NBA team. 
#'@export
#'
#'@examples
#'scrape_nba_team_stats("CHI", "1998","#totals")
scrape_nba_team_stats <- function(slug, year, stats_tb){
  # define team page URL
  url <- base::paste0("https://www.basketball-reference.com/teams/",
                      slug,"/", year, ".html")
  
  # Read stats table
  stats_tb <- url %>%
    read_html %>%
    html_node(stats_tb) %>% 
    html_table()
  
  # Rename Column 2 to Name 
  base::names(stats_tb)[2] <- "Name"
  
  # Replace NA values with 0 (for stat functions)
  stats_tb[base::is.na(stats_tb)] <- 0
  
  # make data frame
  df <- base::data.frame(stats_tb)
  base::return(df)
}