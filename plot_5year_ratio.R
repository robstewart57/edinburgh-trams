library(ggplot2)

args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 2) {
    stop("Usage plot_5year_ratio.R <input_file.csv> <output_file.pdf>")
}
inputFile <- args[1]
outputFile <- args[2]
dat <- read.csv(inputFile)

ggplot(data=dat, aes(x=year, y=growth, group=placeName, linetype = placeName, colour = placeName)) +
    geom_line(size=1.3) +
    theme_bw() +
    theme(aspect.ratio=3/3, axis.title=element_text(size=18,face="bold"), axis.text.y = element_text(size=18), axis.text.x = element_text(size=18), legend.title = element_blank(), legend.text=element_text(size=18)) +
    guides(linetype = guide_legend(override.aes = list(size=1)))

ggsave(outputFile, width=10, height=10, dpi=100)
