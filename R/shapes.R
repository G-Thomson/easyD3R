# Rectangular features
feat_rect <- function(coords, height = 20, vjust = 75,  fill = "orange"){
  inst <- coords %>%
    mutate(type = "rect",
           x = as.numeric(start),
           y = vjust,
           width = as.numeric(end-start),
           height = height,
           fill = fill) %>%
    select(-start, -end) %>%
    mutate(count = 1:n()) %>%
    nest(-count) %>%
    select(-count) %>%
    mutate(data = map(data, ~ flatten(.x))) %>% pull()
  return(inst)
}

# Arrow
feat_arr <- function(coords, height = 20, width = 40, fill = "green"){

  inst <- coords %>%
    mutate(type = "arrow",
           x = as.numeric(start)-(width/2),
           y = 55,
           direction = "down",
           width = width,
           height = height,
           fill = fill) %>%
    select(-start, -end) %>%
    mutate(count = 1:n()) %>%
    nest(-count) %>%
    select(-count) %>%
    mutate(data = map(data, ~ flatten(.x))) %>%
    pull()

  return(inst)
}
