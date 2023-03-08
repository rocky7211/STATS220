library(magick)

# R program to create a GIF from scratch
# Author: jmcd501

# Read each image into frames 1-10
frame1 <- image_read("./frames/batman-1.png")
frame2 <- image_read("./frames/batman-2.png")
frame3 <- image_read("./frames/batman-3.png")
frame4 <- image_read("./frames/batman-4.png")
frame5 <- image_read("./frames/batman-5.png")
frame6 <- image_read("./frames/batman-6.png")
frame7 <- image_read("./frames/batman-7.png")
frame8 <- image_read("./frames/batman-8.png")
frame9 <- image_read("./frames/batman-9.png")
frame10 <- image_read("./frames/batman-10.png")

# combine each frame in order
frames <- c(frame1, frame2, frame3, frame4, frame5, frame6, frame7, frame8,
            frame9, frame10)

# animate the frame, and annotate with the comment - then save the file.
image_animate(frames, fps=10) %>%
  image_annotate(text="data structures be like", gravity = "south", size=35,
                 color="#FFF") %>%
      image_scale(800) %>%
        image_write("batman.gif")

