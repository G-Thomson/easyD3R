# Base instance of sequence
geneVR <- function(length, height = 10, fill = "gray"){
  inst <- list(list(type = "rect",
                    x = 0,
                    y = 80,
                    width = length,
                    height = height,
                    fill = fill))
  easyD3(inst)
}
