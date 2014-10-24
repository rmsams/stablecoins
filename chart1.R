#library(tikzDevice)
pdf("chart1.pdf", width=3, height=3, paper="special")
par(mar=c(2.5,2,0.1,1))
## just setup the axis, no curve
curve(1/x, 0, 1, xaxt="n", yaxt="n",
      xlab="", ylab="", xaxs="i", yaxs="i", type="n")

## draw the two demand curves and P and Q deltas
(function(D1,D2){
  Q1 <- 0.2
  P1 <- D1/Q1
  Q2 <- D2/P1
  P2 <- D2/Q1
  rect(0, P1, Q1, P2, col="red")
  rect(Q1, 0, Q2, P1, col="green")
  curve(D1/x, 0, 1, add=T, n=10000, lty="dashed")
  curve((D1*2)/x, 0, 1, add=T, n=10000)
  axis(1, c(Q1,Q2), labels=c("Q","Q*"), cex.axis=.75)
  axis(2, c(P1,P2), labels=c("P","P*"), cex.axis=.75)
  text(Q1*.55, D1/(Q1*.3), "CD", cex=.75)
  text(Q1*.95, D2/(Q1*.7), "CD*",cex=.75)
})(4,4*2)

dev.off()

