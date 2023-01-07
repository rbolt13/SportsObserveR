test_that("Returns that typeof is list.", {
  expect_equal(typeof(scrape_nba_player_stats("Kareem Abdul-Jabbar", "#totals")),
               "list")
})