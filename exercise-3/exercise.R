### Exercise 3 ###
library(jsonlite)
library(dplyr)
# Use the `load` function to load in the nelly_tracks file.  That should make the data.frame
# `top_nelly` available to you
load('nelly_tracks.Rdata')
# Use the `flatten` function to flatten the data.frame -- note what differs!
flat.nelly <- flatten(top.nelly)

# Use your `dplyr` functions to get the number of the songs that appear on each album
track.num <- 
url <- paste0'(https://api.spotify.com/v1/albums/', track.num, '/tracks?limit=2')



# Bonus: perform both of the steps above in one line (one statement)
