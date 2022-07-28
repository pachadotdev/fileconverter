#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    fluidPage(sidebarLayout(
      sidebarPanel(
        fileInput('infile', label = NULL,
                  accept = c('.csv', '.tsv', '.json', '.xlsx', '.sav', '.dta', '.sas7bdat')),
        selectInput('output_format', label = h3('Output format'),
          choices = available_formats, selectize = FALSE,
          size = length(available_formats)),
        checkboxInput('clean_names', 'Tidy column names', TRUE),
        downloadButton('download_data', 'Download')
      ),
      mainPanel(
        markdown("
          # fileconverter

          ## What's this?

          `fileconverter` is a simple app that uses [rio](https://github.com/leeper/rio)
          R package but makes it simpler thanks to
          [Shiny](https://github.com/rstudio/shiny).

          It does the same as [rioweb](https://raw.githubusercontent.com/lbraglia/rioweb)
          but supports larger files.

          ## What does this do?

          Streamlined data import and export by making assumptions that the user is
          probably willing to make. Determines the data structure from the file
          extension, reasonable defaults are used for data import and export
          (e.g., `stringsAsFactors = FALSE`), some compressed files can be read directly
          without explicit decompression, and fast import packages are used where
          appropriate.

          ## Where is it?

          The app lives [here](https://shiny.pacha.dev/fileconverter) and the development
          repository is [here](http://github.com/pachadotdev/fileconverter).

          ## Disclaimer

          `fileconverter` is made available in the hope that it will be useful, but
          without any warranty and assuming you'll use it by following goodwill.
        "),
        HTML('
          <script data-name="BMC-Widget" data-cfasync="false" src="https://cdnjs.buymeacoffee.com/1.0.0/widget.prod.min.js" data-id="pacha" data-description="Support me on Buy me a coffee!" data-message="If this tool is useful to you, please support it." data-color="#ff813f" data-position="Right" data-x_margin="18" data-y_margin="18"></script>
        ')
      )
    ))
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "fileconverter"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
