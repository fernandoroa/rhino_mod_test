box::use(
  shiny[...]
)

#' @export
ui <- function(id) {
  ns <- NS(id)
    tagList(
      tags$h3("string" ), # good
      uiOutput(ns("title2") ) # fails
    )

}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  
    output$title2 <- renderUI({
      tags$h3("string in uiOutput" )
})
})}
