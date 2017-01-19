#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
easyD3 <- function(annotations, width = NULL, height = NULL, elementId = NULL) {
  # create widget
  htmlwidgets::createWidget(
    name = 'easyD3',
    annotations,
    width = width,
    height = height,
    package = 'easyD3R',
    elementId = elementId
  )
}

#' Shiny bindings for easyD3
#'
#' Output and render functions for using easyD3 within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a easyD3
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name easyD3-shiny
#'
#' @export
easyD3Output <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'easyD3', width, height, package = 'easyD3R')
}

#' @rdname easyD3-shiny
#' @export
renderEasyD3 <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, easyD3Output, env, quoted = TRUE)
}
