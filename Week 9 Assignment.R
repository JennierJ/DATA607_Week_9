install.packages("httr")

library(jsonlite)
library(RCurl)
library(httr)

URL <- "https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json"

key <- "a8e5ed6c1d4c43258d73f5a9866739a9"

df <- GET(URL, query = list(api_key = key))

names(df)

df$url

df2 <- fromJSON(df$url)

mainDF <- df2$results

View(mainDF)



