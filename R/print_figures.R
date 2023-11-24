#' Print presentation figures
#'
#' @return .tex files
#' @export
#'
#' @examples
#' print_presentation_figures()
#'
print_presentation_figures <- function() {

  # add helper function to get file path to the directory for the presentation

  p_path <- function(x) {
    getwd() |>                                 # get working directory
      paste0("/inst/presentation/", x)         # add file name
  }

  # print figure with the fiscal policy during the Great Recession and the COVID-19 pandemic

  tikzDevice::tikz(                                # start tikzDevice
    file = p_path("fiscal_policy.tex"),            # output path and file name
    width = 4.5, height = 2.5                      # figure size
  )

  par(mfrow = c(1, 2))

  bb_gr_plot()

  title(
    main = "A. Great Financial Crisis (GFC)",      # set plot title
    font.main = 1,                                 # set title font to plain
    cex.main = 0.9                                 # expand characters by 0.9
  )

  bb_covid_plot()

  title(
    main = "B. COVID-19 Pandemic",                  # set plot title
    font.main = 1,                                  # set title font to plain
    cex.main = 0.9                                  # expand characters by 0.9
  )

  dev.off()

  # print figure with the monetary policy during the Great Recession and the COVID-19 pandemic

  tikzDevice::tikz(                                # start tikzDevice
    file = p_path("monetary_policy.tex"),            # output path and file name
    width = 4.5, height = 2.5                      # figure size
  )

  par(mfrow = c(1, 2))

  mb_gr_plot()

  title(
    main = "A. Great Financial Crisis (GFC)",      # set plot title
    font.main = 1,                                 # set title font to plain
    cex.main = 0.9                                 # expand characters by 0.9
  )

  mb_covid_plot()

  title(
    main = "B. COVID-19 Pandemic",                  # set plot title
    font.main = 1,                                  # set title font to plain
    cex.main = 0.9                                  # expand characters by 0.9
  )

  dev.off()

}
