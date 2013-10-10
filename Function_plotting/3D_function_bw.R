x <- seq(-3, 3, length= 30)
y <- seq(0, 5, length= 30)
f <- function(x, y) { r <- y/exp(x)^2 }
z <- outer(x, y, f)

pdf("3Dsurface_plot.pdf")

persp(x, y, z, phi = 20, theta =20,
  xlab = "X axis label", ylab = "Y axis label",
  main = "Main", 
  ticktype="detailed"
)

dev.off()
