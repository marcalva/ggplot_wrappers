
#' Percent stacked barplot
#'
#' @param datf Data frame in melted format
#' @param x Column name for the grouping variable
#' @param y Column name for the percentage variable
#' @param fill Column name for the color fill
#'
#' @return A ggplot object
pct_stack_barplt <- function(datf, x, y, fill){
    require(ggplot2)
    require(reshape2)

    datfm <- melt(datf)
    p <- ggplot(datf, aes_string(x = x, y = y, fill = fill)) + 
      geom_bar(position = "fill", stat = "identity")

    return(p)
}

