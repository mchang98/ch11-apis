### Exercise 1 ###

# Load the httr and jsonlite libraries for accessing data
library("httr")
library("jsonlite")

## For these questions, look at the API documentation to identify the appropriate endpoint and information.
## Then send GET() request to fetch the data, then extract the answer to the question

# How many forks does the most popular repository (by number of forks) have when you search for the term "d3"?
# (search for the term, and sort descending by the number of forks)
base.uri <- 'https://api.github.com/search/repositories'
query.params <- list(q = "d3", sort = "forks", order = "desc")
response <- GET(base.uri, query = query.params)
body <- content(response, "text")
parsed.data <- fromJSON(body)

items <- parsed.data$items
most.popular.forks <- items[1, 'forks']

# How many public repositories does our course organization have?
base.uri <- 'https://api.github.com/search/repositories'
query.params <- list(q = "d3", sort = "forks", order = "desc")
response <- GET(base.uri, query = query.params)
body <- content(response, "text")
parsed.data <- fromJSON(body)

items <- parsed.data$items
num.repo <-
