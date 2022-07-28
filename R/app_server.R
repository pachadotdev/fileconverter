#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @importFrom rio import export
#' @importFrom janitor clean_names
#' @importFrom tools file_ext file_path_sans_ext
#' @noRd
app_server <- function(input, output, session) {
  output$download_data <- downloadHandler(
    filename = function() {
      paste0(basename(file_path_sans_ext(input$infile$name)), '.', { input$output_format })
    },
    content = function(file) {
      input_file <- input$infile
      input_file_format <- file_ext(input_file$name)
      if (is.null(input_file)) {
        return(NULL)
      } else {
        export(
          x = if (input$clean_names) {
            clean_names(import(file = input_file$datapath, format = input_file_format))
          } else {
            import(file = input_file$datapath, format = input_file_format)
          },
          file = file,
          format = input$output_format
        )
      }
    }
  )
}
