library(tidyverse)
library(magick)

# Script to recreate a meme using R
# Author: jmcd501

# Read and save meme images to variables
drake_unhappy <- image_read("drake_unhappy.png") %>%
  image_scale(500)

drake_happy <- image_read("drake_happy.png") %>%
  image_scale(500)

# Create a blank image and attach comments
top_comment <- image_blank(500, 333, color = "#000") %>%
  image_annotate( text = "Comments to describe\n the program",
                  gravity = "center", size = 30, color = "#FFF")

bottom_comment <- image_blank(500, 281, color = "#000") %>%
  image_annotate( text = "Comments to temporarily\n remove part of the code",
                  gravity = "center", size = 30, color = "#FFF")

# Creating the rows
top_row <- image_append(c(drake_unhappy, top_comment))
bottom_row <- image_append(c(drake_happy, bottom_comment))

# Combine the top and bottom rows, then save the image
c(top_row, bottom_row) %>%
  image_append(stack = TRUE) %>%
  image_scale(800) %>%
  image_write("meme.png")

