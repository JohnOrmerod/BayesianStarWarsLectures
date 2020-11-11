


library(memer)
library(meme)
u <- system.file("your_faith1.jpg", package="meme")
x <- meme(u, "Your faith in asymptotic formula is your weakness")
outfile <- tempfile(fileext=".png")
meme_save(x, file=outfile)