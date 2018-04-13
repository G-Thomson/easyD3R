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
feat_text <- function(coords, text = "text", vjust = 75,  font_size = 24, font_family = "Sans",
                      rotate = 0, fill = "black"){
  inst <- coords %>%
    transmute(type = "text",
              text = text,
              x = as.numeric(start),
              y = vjust,
              font_size = font_size,
              font_family = font_family,
              rotate = paste0("rotate(", rotate, ")"),
              fill = fill) %>%
    transpose()
  return(inst)
}

# Bracket
feat_brac <- function(coords, height = 10, vjust = 75, fill = "green", strokewidth = 4){
  inst <- coords %>%
    transmute(type = "bracket",
                x = as.numeric(x[1]),
                y = vjust,
                width = as.numeric(x[2]-x[1]),
                height = height,
                fill = fill,
                stroke = fill,
                strokewidth = strokewidth) %>%
    transpose()
  return(inst)
}

# Half-arrow
feat_half_arrow <- function(coords, height = 5, vjust = 75, width = 40, fill = "green", strokewidth = 2, direction = "right"){
  inst <- coords %>%
    transmute(type = "half-arrow",
                x = as.numeric(x[1]),
                y = vjust,
                width = width,
                height = height,
                fill = fill,
                stroke = fill,
                strokewidth = strokewidth,
                direction = direction) %>%
    transpose()
  return(inst)
}
