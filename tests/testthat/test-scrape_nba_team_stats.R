test_that("Returns that typeof is list.", {
  expect_equal(typeof(scrape_nba_team_stats("CHI", "1998","#totals")),
               "list")
})