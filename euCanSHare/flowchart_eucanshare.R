library(diagram)

# creates an empty plot
openplotmat()






# Set position

# create the coordinates
# Number of elements in each row
pos <- coordinates(c(1,3,3,3,3))
pos
plot(pos, type = 'n')
text(pos)

#pos <- coordinates(c(2, 1, 1, 3, 1), mx = -0.2)
#pos <- coordinates(c(2, 1, 1, 3, 1))
#pos

# Set Diagram Title 
openplotmat(main = "textbox shapes")

# Set Box size
rx <- 0.1 # wide
ry <- 0.05
#rx <- 0.1
#ry <- 0.1


# Add segments and arrows
par(mar = rep(1, 4))
openplotmat()
pos <- coordinates(c(1,3,3,3,3))
# the dd parameter was used to move the segment arm
segmentarrow (from = pos[1, ], to = pos[2, ], dd = 0.45)
straightarrow(from = pos[2, ], to = pos[3, ])
straightarrow(from = pos[3, ], to = pos[4, ])
straightarrow(from = pos[7, ], to = pos[6, ])
straightarrow(from = pos[6, ], to = pos[5, ])
straightarrow(from = pos[10, ], to = pos[9, ])
straightarrow(from = pos[9, ], to = pos[8, ])
straightarrow(from = pos[13, ], to = pos[12, ])
straightarrow(from = pos[12, ], to = pos[11, ])
# the path parameter was used to change the direction
# arr.pos was used to position the arrow
# arr.side was used to specific where the arrow should be drawn
segmentarrow (from = pos[4, ], to = pos[7, ], dd = 0.15, path = 'RVL', arr.pos = 0.24, arr.side = 3)
segmentarrow (from = pos[4, ], to = pos[10, ], dd = 0.15, path = 'RVL', arr.pos = 0.24, arr.side = 3)
segmentarrow (from = pos[4, ], to = pos[13, ], dd = 0.15, path = 'RVL', arr.pos = 0.24, arr.side = 3)

# Add boxes in positions
#textrect(mid = pos[1,], radx = rx, rady = ry, lab = "DAC", cex = 1, box.col = "#999999", shadow.col = NULL)
#textrect(mid = pos[2,], radx = rx, rady = ry, lab = "DAC", cex = 1, box.col = "#999999", shadow.col = NULL)
#textrect(mid = pos[3,], radx = rx, rady = ry, lab = "DAC", cex = 1, box.col = "#999999", shadow.col = NULL)
#textrect(mid = pos[4,], radx = rx, rady = ry, lab = "DAC", cex = 1, box.col = "#999999", shadow.col = NULL)
#textrect(mid = pos[5,], radx = rx, rady = ry, lab = "DAC", cex = 1, box.col = "#0072B2", shadow.col = NULL) 

my_label <- c(1, 2, 3, 4, 7, 6, 5, 10, 9, 8, 13, 12, 11)
my_text_size <- 1.3
my_edge_length <- 0.08
for(i in 1:length(my_label)){
        if (i %in% 5:7){
                textrect(mid = pos[i,], radx = my_edge_length, rady = my_edge_length, lab = my_label[i], cex = my_text_size, box.col = "#0072B2",  shadow.col=NULL)
        } else if (i %in% 8:10){
                textrect(mid = pos[i,], radx = my_edge_length, rady = my_edge_length, lab = my_label[i], cex = my_text_size, box.col = "#009E73", shadow.col=NULL)
        } else if (i %in% 11:13){
                textrect(mid = pos[i,], radx = my_edge_length, rady = my_edge_length, lab = my_label[i], cex = my_text_size, box.col = "#D55E00", shadow.col=NULL)
        } else {
                textrect(mid = pos[i,], radx = my_edge_length, rady = my_edge_length, lab = my_label[i], cex = my_text_size, box.col = "#999999", shadow.col=NULL)
        }
}

# Add boxes in positions
#textdiamond(mid = pos[1,], radx = rx, rady = ry, lab = LETTERS[1], cex = 2, shadow.col = "lightblue")
#textdiamond(mid = pos[1,], radx = rx, rady = ry, lab = LETTERS[1], cex = 2, shadow.col = NULL)
#textellipse(mid = pos[2,], radx = rx, rady = ry, lab = LETTERS[2], cex = 2, shadow.col = "blue")
#texthexa(mid = pos[3,], radx = rx, rady = ry, lab = LETTERS[3], cex = 2, shadow.col = "darkblue")
#textmulti(mid = pos[4,], nr = 7, radx = rx, rady = ry, lab = LETTERS[4], cex = 2, shadow.col = "red")
#textrect(mid = pos[5,], radx = rx, rady = ry, lab = LETTERS[5], cex = 2, shadow.col = "darkred")
#textround(mid = pos[6,], radx = rx, rady = ry, lab = LETTERS[6], cex = 2, shadow.col = "black")
#textparallel(mid = pos[7,], radx = rx, rady = ry, lab = LETTERS[7], cex = 2, theta = 40, shadow.col = "black")
#textempty(mid = pos[8,], lab = LETTERS[8], cex = 2, box.col = "yellow")


# Set relative position
pos[ ,1] <- pos[ ,1] + 1.5
pos
text(pos[ ,1],pos[ ,2], c("textdiamond", "textellipse", "texthexa",
                          "textmulti", "textrect", "textround",
                          "textparallel", "textempty"))



