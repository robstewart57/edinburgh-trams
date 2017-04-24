#!/bin/sh

Rscript plot_5year_ratio.R trams-ratio.csv trams-ratio.pdf
pdftrimwhite trams-ratio.pdf trams-ratio.pdf
rm trams-ratio.log
convert trams-ratio.pdf trams-ratio.png
mv trams-ratio.png graphs/
rm trams-ratio.pdf

Rscript plot_5year_ratio.R national-ratio.csv national-ratio.pdf
pdftrimwhite national-ratio.pdf national-ratio.pdf
rm national-ratio.log
convert national-ratio.pdf national-ratio.png
mv national-ratio.png graphs/
rm national-ratio.pdf
