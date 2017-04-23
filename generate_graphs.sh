#!/bin/sh

Rscript plot_5year_ratio.R trams-ratio.csv trams-ratio.pdf
pdftrimwhite trams-ratio.pdf trams-ratio.pdf
rm trams-ratio.log

Rscript plot_5year_ratio.R national-ratio.csv national-ratio.pdf
pdftrimwhite national-ratio.pdf national-ratio.pdf
rm national-ratio.log
