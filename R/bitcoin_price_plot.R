#' Plot bitcoin price
#'
#' This function plots the bitcoin price from Sep 17, 2014 to Dec 06, 2023.
#'
#' @return plot object
#' @export
#'
#' @examples
#' bitcoin_price_plot()
bitcoin_price_plot <- function() {

  par(mar=                            # setting the margins around the plot
        c(2, 5, 2, 2),                # (bottom, left, top, right)
      cex = 0.9                       # plotting text magnification
  )

  plot(                               # starting a new plot
    bitcoin,          # providing data for the first line
    axes = F,                   # removing the axes
    xlab="", 		  					    # blank space for the x-axis label
    ylab="", 		  					    # blank space for the y-axis label
    type="l",                   # specifying the type of the plot
    lwd=1.5,                      # specifying the line width
    ylim = c(0, 70000),         # specifying the limit of the y-axis
    xlim=                       # specifying the limit of the x-axis
      c(as.Date("2014-09-17"), as.Date("2023-12-31") + 33),
    xaxs = "i",                # internal x-axis range calculation
    yaxs = "i"                 # internal y-axis range calculation
  )


  axis(						                            # adding an axis to the current plot
    side=1, 				                        	# the axis should be drawn below
    at=as.Date(c("2014-09-17",
                 "2020-03-23",
                 "2023-12-06")),# specifying labels locations
    labels=c(
      format(as.Date("2014-09-17"), format = "%b %d, %Y"),
      "Covid-19 crisis",
      format(as.Date("2023-12-06"), format = "%b %d, %Y")
    ),                                    # specifying the labels
    tick=T,				                          	# ticks
    # family="serif"                      		  # specifying the font
  )

  axis(						                            # adding an axis to the current plot
    side=2, 				                        	# the axis should be drawn to the left
    at = seq(0, 70000, 10000),	                   # specifying labels locations
    labels = c("\\$0", paste0("\\$", seq(10, 70, 10), " 000")),  # specifying the labels
    las = 2,                        	      	# specifying the label orientation
    tick = F,				                          # no ticks
    # family = "serif"	                      	# specifying the font
  )

}


