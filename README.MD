# easyD3R

An R package that acts as an htmlwidgets wrapper for easy-d3

## Installation

```
install.packages("devtools")
devtools::install_github("UoA-eResearch/easyD3R")
```

## Usage:

```
library("easyD3R")

objects <- list(
  list(type = "rect", x = 0, y = 80, width = 550, height = 30, fill = "gray"),
  list(type = "rect", x = 20, y = 75, width = 115, height = 40, fill = "orange"),
  list(type = "rect", x = 160, y = 75, width = 115, height = 40, fill = "orange"),
  list(type = "rect", x = 300, y = 75, width = 10, height = 40, fill = "orange"),
  list(type = "rect", x = 360, y = 75, width = 20, height = 40, fill = "orange"),
  list(type = "rect", x = 400, y = 75, width = 20, height = 40, fill = "orange"),
  list(type = "rect", x = 470, y = 75, width = 15, height = 40, fill = "orange")
);
annotations1 <- list(
  list(type = "arrow", direction = "right", x = 485, y = 75, width = 20, height = 40, fill = "orange"),
  list(type = "arrow", direction = "down", x = 40, y = 40, width = 45, height = 35, fill = "black"),
  list(type = "arrow", direction = "up", x = 275, y = 60, width = 25, height = 15, stroke = "black", fill = "none"),
  list(type = "arrow", direction = "up", x = 310, y = 60, width = 50, height = 15, stroke = "black", fill = "none")
)
annotations2 <- list(
  list(type = "marker", text = "45", x = 135, y = 15, height = 55, stroke = "black", fill = "black"),
  list(type = "marker", text = "63", x = 160, y = 15, height = 55, stroke = "black", fill = "black"),
  list(type = "text", text = "EXON 2", x = 210, y = 50, fill = "black"),
  list(type = "bracket", x = 305, y = 30, width = 105, height = 30, stroke = "black")
)
widget <- easyD3(objects)

# You can pass the widget to the function
easyD3(annotations1, widget = widget)

# Or you can use the + operator
widget + annotations1 + annotations2

# Order doesn't matter
annotations1 + widget
```
