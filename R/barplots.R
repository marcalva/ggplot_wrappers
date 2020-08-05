
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
    require(scales)

    datfm <- melt(datf)
    p <- ggplot(datf, aes_string(x = x, y = y, fill = fill)) + 
      geom_bar(position = "fill", stat = "identity") + 
      scale_y_continuous(labels=percent) + 
      theme_bw() + 
      theme(axis.text.x = element_text(angle = 30, hjust = 0.9), 
            panel.border = element_blank(), 
            axis.line = element_line())

    return(p)
}

