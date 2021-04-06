#Specifying the url for desired website to be scrapped
url <- 'https://www.amazon.in/OnePlus-Mirror-Black-64GB-Memory/dp/B077PWBC6V?tag=googinkenshoo-21&ascsubtag=aee9a916-6acd-4409-92ca-3bdbeb549f80&th=1'

#Reading the html content from Amazon
webpage <- read_html(url)

#Scrape title of the product
title_html <- html_nodes(webpage, 'h1#title')
title <- html_text(title_html)
head(title)

#Remove all space and new lines
str_replace_all(title, "[\r\n]", "")

#Scrape the price of the product
price_html <- html_nodes(webpage, 'span#priceblock_ourprice')
price <- html_text(price_html)

#Remove spaces and new line
str_replace_all(price, "[\r\n]", "")

#Print price value
head(price)

#Scrape product description
desc_html <- html_nodes(webpage, 'div#productDescription')
desc <- html_text(desc_html)

#Replace new lines and spaces and tabs
desc <- str_replace_all(desc, "[\r\n\t]", "")
desc <- str_trim(desc)
head(desc)

#Scrape product rating
rate_html <- html_nodes(webpage, 'span#acrPopover')
rate <- html_text(rate_html)

#Remove spaces and new lines and tabs
rate <- str_replace_all(rate, "[\r\n]", "")
rate <- str_trim(rate)

#Print rating of the product
head(rate)

#Scrape size of the product
size_html <- html_nodes(webpage, 'div#variation_size_name')
size_html <- html_nodes(size_html, 'span.selection')
size <- html_text(size_html)

#Remove tabs from text
size <- str_trim(size)

#Print product size
head(size)

#Scrape product color
color_html <- html_nodes(webpage, 'div#variation_color_name')
color <- html_text(color_html)

#Remove new lines and spaces
color <- str_replace_all(color, "[\r\n]", "")

#Scrape tabs from text
color <- str_trim(color)

#Print product color
head(color)

#Combining all the lists to form a data frame
product_data <- data.frame(Title = title, Price = price, Description = desc, Rating = rate, Size = size, Color = color)

#Structure of the data frame
str(product_data)
