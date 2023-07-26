#
#
#
devtools::check()
# rhub::check_for_cran()
devtools::build()
golem::add_shinyappsio_file()
rsconnect::deployApp(
  appName = "rsconnect_ci_sa_golem",
  appTitle = "rsconnect test deploy by github action a golem app",
  appFiles = c(
    "R/",
    "inst/",
    "NAMESPACE",
    "DESCRIPTION",
    "app.R"
  ),
  appId = rsconnect::deployments(".")$appID,
  lint = FALSE,
  forceUpdate = TRUE,
  account = "ssm-ecologie"

)
