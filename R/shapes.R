# Rectangular features
feat_rect <- function(coords, height = 20, vjust = 75,  fill = "orange"){
  inst <- coords %>%
    transmute(type = "rect",
           x = as.numeric(start),
           y = vjust,
           width = as.numeric(end-start),
           height = height,
           fill = fill) %>%
    transpose()
  return(inst)
}

# Arrow
feat_arr <- function(coords, height = 20, width = 40, fill = "green"){
  inst <- coords %>%
    transmute(type = "arrow",
           x = as.numeric(start)-(width/2),
           y = 55,
           direction = "down",
           width = width,
           height = height,
           fill = fill) %>%
    transpose()
  return(inst)
}

# Text
feat_text <- function(coords, text = "text", vjust = 75,  font_size = 24, font_family = "Sans", fill = "black"){
  inst <- coords %>%
    transmute(type = "text",
              text = text,
              x = as.numeric(start),
              y = vjust,
              font_size = font_size,
              font_family = font_family,
              fill = fill) %>%
    transpose()
  return(inst)
}
