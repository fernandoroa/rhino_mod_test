box::use(
  shiny[bootstrapPage, moduleServer, NS, renderText, tags, textOutput],
)

box::use(
  modules / title_controls
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    tags$h3(
      textOutput(ns("message"))
    )
    , title_controls$ui(ns("title_controls") )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$message <- renderText("Hello!")
    title_controls$server("title_controls") 
  })

}
