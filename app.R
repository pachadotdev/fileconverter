# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file

pkgload::load_all(export_all = FALSE,helpers = FALSE,attach_testthat = FALSE)
options("golem.app.prod" = TRUE)
# By default, the file size limit is 5MB. It can be changed by setting this option. Here we'll raise limit to 20MB.
options(shiny.maxRequestSize = 200*1024^2)
fileconverter::run_app() # add parameters here (if any)
