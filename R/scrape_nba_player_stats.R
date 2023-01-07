#' Scrapes NBA player stats tables off basketball-reference.com.
#'
#'@import rvest 
#'@import magrittr
#'
#'@param name is a char string that corresponds to the players name.
#'@param stats_tb is a char string that corresponds to the statistics table such as #per_game, #totals, #per_36_minutes, and #advanced.
#'
#'@return a data frame of statistics for a specific NBA player. 
#'@export
#'
#'@examples
#'scrape_nba_player_stats("Allen Iverson", "#per_game")
scrape_nba_player_stats <- function(name, stats_tb){
  # make name lower case
  lower_case_name <- base::tolower(name)
  
  # split name 
  split_name <- base::strsplit(lower_case_name, " +")[[1]]
  
  # define first and last name
  first_name <- split_name[[1]]
  last_name <- split_name[[2]]
  
  # first letter of last name
  letter <- base::substr(last_name, 1,1)
  
  # first five letters of last name 
  last_5 <- base::substr(last_name, 1, 5)
  
  # first two letters of first name
  first_2 <- base::substr(first_name, 1,2)
  
  # define team page URL
  url <- base::paste0("https://www.basketball-reference.com/players/",letter ,"/",last_5,first_2,"01.html")
  
  # read url as html
  html <- read_html(url)
  
  # Read stats table
  stats_tb <- html %>%
    read_html %>%
    html_node(stats_tb) %>% 
    html_table()
  
  # Rename Column 2 to Name 
  names(stats_tb)[2] <- "Name"
  
  # Replace NA values with 0 (for stat functions)
  stats_tb[base::is.na(stats_tb)] <- 0
  
  # make list a dataframe
  df <- base::data.frame(stats_tb)
  
  base::return(df)
}