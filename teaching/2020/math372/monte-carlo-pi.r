## Simple functions to do a Monte Carlo simulation to estimate pi.
## Idea: throw darts at a 2 x 2 dart board. Count how many darts end up
##       in the unit circle centered at the center. Since the circle has
##       area pi and the square has radius 4, we should expect pi/4 
##       fraction of the darts to hit the circle. 
## We simulate the darts by using uniform random variables ~Unif(-1,1).



## Use function(inputs) { [commands] } to define a function. The output is 
## the expression on the last line.


## Produces a data frame of quantity # of points in the square of radius 1.
## Each point has an x-coordinate x, a y-coordinate y, and incircle is a
## boolean saying whether the point is in the unit circle.
produce_data <- function(quantity) {
    # runif(q, a, b) produces a q-sized vector of points drawn from Unif(a,b)
    xs <- runif(quantity, -1, 1) 
	 ys <- runif(quantity, -1, 1)

	 # you can do coordinate-wise arithmetic operations on vectors
    isitin <- (xs^2 + ys^2 <= 1)

    # a dataframe is like a spreadsheet in R; it is rows of data with entries
    # in named columns
    # syntax: data.frame(column_name=vector, ...) 
    data.frame(x=xs, y=ys, incircle=(xs^2 + ys^2 <= 1) )
}

## Plots the data frame to give a graphical representation of the simulation.
## Probably don't use this if data has too many rows :)
plot_data <- function(data) {
    # plot() is the main R function to plot data
    # first two inputs are vectors of x and y coordinates
    # optional inputs given by parameter_name=value
    # e.g. col="blue" colors the points blue
    plot(data$x, data$y, 
	      # can use complex expressions, e.g. this one to color based on
         # whether the point is in the circle
	      col=ifelse(data$incircle, "blue", "red"), 
			xlab="x", ylab="y",
			main="Monte Carlo simulation to estimate pi")
}

## Use the data frame to estimate pi.
## The square has area 4, the circle has area pi. So if you multiply the 
## Propotion of points in the circle by 4 you get an approximation of pi.
estimate_pi <- function(data) {
	 # subset(dataframe, boolean) returns the rows of the dataframe where
	 # boolean is true
    # nrow(dataframe) counts the number of rows of a dataframe
    4 * nrow(subset(data, data$incircle)) / nrow(data)
}

