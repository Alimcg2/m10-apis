### Exercise 2 ###

# As you noticed, it often takes multiple queries to retrieve the desired information.
# This is a perfect situation in which writing a function will allow you to better structure your
# code, and give a name to a repeated task.
library(jsonlite)

artist <- "Nelly"
# Write a function that allows you to specify an artist, 
#and returns the top 10 tracks of that artist
ArtistTop <- function(artist){
  base <- 'https://api.spotify.com/v1/'
  subArtist <- gsub(" ", "%20", artist)
  search <- paste0(base, 'search?q=',subArtist, '&type=artist')
  data <- fromJSON(search)
  getId <- data$artists$items$id[1]
  getCountry <- 
  getTop <- paste0(base, 'artists/', getId, '/top-tracks?country=US')
  top <- fromJSON(getTop)
  return(top)
}
TopNelly <- ArtistTop('Kevin Gates')
View(TopNelly)
# What are the top 10 tracks by Nelly?




### Bonus ### 
# Write a function that allows you to specify a search type (artist, album, etc.), and a string, 
# that returns the album/artist/etc. page of interest


# Search albums with the word "Sermon"

