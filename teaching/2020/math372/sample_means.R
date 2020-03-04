
gen_means_unif <- function (n,k) {
    x <- list(0,k)
    # X~Unif(-sqrt(3),sqrt(3)) has mean=0, stddev=1
    for (i in 1:k) { x[i] <- as.numeric(mean(runif(n,-sqrt(3),sqrt(3)))) }
    unlist(x)
}
gen_means_norm <- function (n,k) {
    x <- list(0,k)
    for (i in 1:k) { x[i] <- as.numeric(mean(rnorm(n,0,1))) }
    unlist(x)
}


hist_unif <- function (n,k) {
    label <- paste("Histogram for ", k, " means of n=", n, " random sample", sep="")
    xlabel <- "Uniform RV, mean=0, stddev=1"
    hist(gen_means_unif(n,k), breaks=seq(from=-0.5,to=0.5,by=0.05), main=label, xlab=xlabel)
}
hist_norm <- function (n,k) {
    label <- paste("Histogram for ", k, " means of n=", n, " random sample", sep="")
    xlabel <- "Normal RV, mean=0, stddev=1"
    hist(gen_means_norm(n,k), breaks=seq(from=-0.5,to=0.5,by=0.05), main=label, xlab=xlabel)
}

pdf("plot.pdf")
hist_unif(100,1000)
hist_unif(1000,1000)
hist_unif(10000,1000)
hist_unif(100000,1000)
hist_norm(100,1000)
hist_norm(1000,1000)
hist_norm(10000,1000)
hist_norm(100000,1000)
dev.off()
