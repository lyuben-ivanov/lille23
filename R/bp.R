#' Create barplot with three bars
#'
#' @param bar_1_data time series data for bar 1 (a named vector)
#' @param bar_2_data time series data for bar 2 (a named vector)
#' @param bar_3_data time series data for bar 3 (a named vector)
#' @param y_ticks tick distance for y-axis
#' @param y_axis logical, should y-axis be added?
#' @param y_lim numerical vector denoting y-axis limits
#' @param mar_values numerical vector denoting margins as required by `par()`
#'
#' @return a plot object
#' @export
#'
#' @examples
#' x <- seq(-100, 50, by = 75)
#' y <- seq(-50, 50, by = 50)
#' z <- seq(-20, 60, by = 40)
#' bp(x, y, z, y_ticks = 20)
#'
bp <- function (                        # add barplot function
  bar_1_data = NULL,                    # require data for bar 1
  bar_2_data = NULL,                    # require data for bar 2
  bar_3_data = NULL,                    # require data for bar 3
  y_ticks = 1,                          # require tick distance for y-axis
  y_axis = TRUE,                        # ask for y-axis
  y_lim = c(-100, 100),                 # set default value of y-axis limits
  mar_values = c(3, 4, 2, 1) ,          # set default value of margins
  names.arg = c("t+1", "t+2", "t+3")    # set default value of labels
) {

  par(mar =                           # set margins around plot
        mar_values,                   # (bottom, left, top, right)
      cex = 0.8,                       # plotting text expansion
      cex.axis = 0.8                   # axis text expansion
  )

  data.frame(                     # data frame for barplot
    bar_1_data,
    bar_2_data,
    bar_3_data
  ) |>
    as.matrix.data.frame() |>       # convert to matrix
    t() |>                          # transpose matrix
    barplot(
      beside = T,               # bars are next to each other
      yaxt = "n",               # remove y-axis
      ylab = "", 		  					# blank space for the y-axis label,
      xlab = "", 		  					# blank space for the x-axis label,
      border = F, 					    # remove borders
      col = gray.colors(3),	 	  # specify colors
      ylim = y_lim,
      names.arg = names.arg,	  # specify labels
      space = c(0.1, 1)
    )

  abline(					# add straight line for x-axis
    h = 0,		    	# specify y-value for horizontal line
    col = "black",	# specify color of horizontal line
    lwd = 1		    	# specify horizontal line's width
  )

  if (y_axis == TRUE) {

    axis(						                            # add y-axis to plot
      side = 2, 				                        # axis should be drawn on left side
      at = seq(                                 # specify labels locations
        from = y_lim[1],                        # first location
        to = y_lim[2],                          # last location
        by = y_ticks	                          # distance between labels
      ),
      labels = seq(                             # specify labels' text
        from = y_lim[1],                        # first label
        to = y_lim[2],                          # last label
        by = y_ticks	                          # distance between first and last
      ) |>
        paste0("\\%"),                          # add LaTeX code for %
      las = 2,                        	      	# horizontal labels
      tick = FALSE				                      # remove ticks
    )

  }

  abline(				       	# add straight lines through current plot
    h = seq(            # specify y-values for horizontal lines
      from = y_lim[1],  # first line
      to = y_lim[2],    # last line
      by = y_ticks	    # distance between lines
    ),
    col = "white",	  	# specify color of horizontal lines
    lwd = 1		        	# specify horizontal lines width
  )

}
