library(shiny)
library(tidyverse)
library(ggplot2)


# actual app
ui <- navbarPage(title = "Coronavirus Bingeing: Recipes and DIYs",
    tabPanel("Fitted Value Plots",
             titlePanel("Fitted Value Plots"),
             column(4, 
                    wellPanel(
                        HTML(paste0(
                            "<small>",
                            "Want to know how COVID-19 has effected YouTube engagement for ",
                            "popular DIY and Cooking Youtubers? Select the Youtubers below to find out.",
                            "</small>")
                            ),
                        br(),
                        br(),
                        HTML(paste0(
                            "<small>",
                            "The red dotted lines on the plots denote March 17, 2020 since March is the month when ",
                            "lockdown measures went into effect for the University of Toronto.",
                            "</small>")
                            )
                        ),
                    wellPanel(
                        checkboxGroupInput("cookingchannels","Choose a Cooking Youtube Channel",
                                           c("Food Network", "Jamie Oliver", "Joshua Weissman", "Recipe30", 
                                             "Sam the Cooking Guy"),
                                           c("Food Network", "Jamie Oliver", "Joshua Weissman", "Recipe30", 
                                             "Sam the Cooking Guy")
                                           ),
                        checkboxGroupInput("diychannels","Choose a DIY Youtube Channel",
                                           c("JenerationDIY", "Household Hackers", "Make", "5-Minute Crafts", "Troom Troom"),
                                           c("JenerationDIY", "Household Hackers", "Make", "5-Minute Crafts", "Troom Troom")
                                           )
                        )
                    ),
             column(8,
                    plotOutput(outputId = "cookingplot"),
                    plotOutput(outputId = "diyplot")
                    )
             ),
    tabPanel("About",
             titlePanel("About"),
             HTML(paste0(
                 "<b>","Data Collection and Analysis","</b>"
                 )
             ),
             br(),
             HTML(paste0(
                 "Our group wanted to review the question “Do people interact with recipe and DIY YouTube videos more ",
                 "during the physical distancing and social isolation period caused by Covid-19?” While working on this ",
                 "project, we encountered various challenges concerning how to attain our dataset. Initially, we used ",
                 "the ‘tuber’ package in R to get data for specific videos on YouTube. However, this method only allowed ",
                 "us to see the total number of views for a video instead of the number of views a video gained on a ",
                 "specified date. "
                 )
             ),
             br(),
             br(),
             HTML(paste0(
                 "We then researched the YouTube API and learned there was an alternate method to getting data from YouTube. ",
                 "Using the YouTube API, we were able to download data for YouTube videos, including the number of comments ", 
                 "a video gained on a given date. The first day we used the YouTube API, our group did not realize there was a ",
                 "daily quota on how much data could be downloaded. We reached our quota before we had all of the data we needed ",
                 "and realized we had downloaded extra data we would never need. After realizing this mistake, we planned ",
                 "exactly what data we would need to collect the next day so that we could gather it all before reaching ",
                 "our quota for that day. Using the API, we decided to use the number of comments a video gained everyday ",
                 "from January 1st, 2020 to June 12th, 2020 for the five most popular videos on ten different YouTube ",
                 "channels, as our dataset. This showed us how much people were interacting with the YouTube videos before ",
                 "physical distancing and social distancing started (From January to March) and after it started ",
                 "(from March to the most recent data we collected on June 12th)."
             )
             ),
             br(),
             br(),
             HTML(paste0(
                 "We plotted the number of video comments by the dates specified above, to illustrate significant patterns ",
                 "and relationships between the two variables. As hypothesized, the majority of the plots regarding both ",
                 "cooking and DIY channels showed a significant increase in video comments during March and April. ",
                 "Prior to these months, the plots of cooking channels illustrated a spike in the number of comments ",
                 "during mid January. In contrast, the plots of DIY channels illustrated variations ranging from minimal ",
                 "changes to significant changes in comment numbers. While exploring the data from each channel, we ",
                 "noticed that similar to how there were channels that did not follow the hypothesized trend, there ",
                 "were also channels that did not follow a common trend prior to March. We realized that factors such as ",
                 "time frame, channel popularity, or the video content itself could prevent videos from following a ",
                 "certain pattern regarding its comments. According to our data, there has been a spike in cooking and ",
                 "DIY video comments amid this pandemic, and to further analyze our results, we proceeded with looking ",
                 "for a statistical model that would be a good fit for our data."
             )
             ),
             br(),
             br(),
             HTML(paste0(
                 "We attempted to fit two models to our data, a Gamma generalized linear model (GLM) and a Gamma ",
                 "generalized additive model (GAM). We used a Gamma model since the number of comments per day was a ",
                 "continuous variable with positive values exclusively. After plotting the fitted values for both ",
                 "models, it was determined that the GAM model better accounted for the randomness across time and ",
                 "modeled the data more accurately. While attempting to fit a GAM model for each channel, the model ",
                 "seemed to overfit the data, but then after several attempts of changing the smoothing parameter ",
                 "(k) values, we determined that GAM would be the best model for our data. Answering our research ",
                 "question, there is some evidence of a correlation between increased interaction with cooking and ",
                 "DIY YouTube videos and lockdown and social-distancing measures, implying that YouTube has been a ",
                 "go-to for many of us staying home amid COVID-19."
             )
             ),
             br(),
             br(),
             br(),
             HTML(paste0(
                 "<b>","Sources","</b>"
             )
             ),
             br(),
             HTML(paste0(
                 "Using the tuber package to analyse a YouTube channel. (2017, December 11). Retrieved June 12, 2020, ",
                 "from https://www.r-bloggers.com/using-the-tuber-package-to-analyse-a-youtube-channel/ "
             )
             ),
             br(),
             HTML(paste0(
                 "Frigaard, M. (2019, September 23). How to download YouTube data in R using 'tuber' and 'purrr'. ",
                 "Retrieved June 3, 2020, from https://www.storybench.org/how-to-download-youtube-data-in-r-using-tuber-and-purrr/"
             )
             ),
             br(),
             br(),
             br(),
             HTML(paste0("<b>","The Team: Funky Cats and Their Feisty Stats","</b>")),
             br(),
             HTML(paste0("<small>","(Hope the Brooklyn 99 reference wasn't lost on anyone!)","</small>")),
             br(),
             HTML(paste0("Nichole Feghali")),
             br(),
             HTML(paste0("Verna Maullon")),
             br(),
             HTML(paste0("Shruthi Vaidyanathan")),
             br(),
             br()
             )
    )

server <- function(input, output) {
    
    load("yt_data.RData")
    
    output$cookingplot <- renderPlot({
        
        yt_data %>%
            filter(.data[["channel"]] %in% input$cookingchannels) %>%
        ggplot(aes(x = date,group = channel)) + 
            geom_line(aes(x = date, y = gam_fitted,colour = channel)) +
            labs(title = "Number of Comments by Day on Cooking YouTube Channels from January-June 2020",
                 x = "Date",
                 y = "Number of Comments (GAM Fitted Values)") +
            geom_vline(xintercept = as.numeric(as.Date("2020-03-17")), linetype = 2,color = "red")
        
    })
    
    output$diyplot <- renderPlot({
        
        yt_data %>%
            filter(.data[["channel"]] %in% input$diychannels) %>%
            ggplot(aes(x = date,group = channel)) + 
            geom_line(aes(x = date, y = gam_fitted,colour = channel)) +
            labs(title = "Number of Comments by Day on DIY Youtube Channels from January-June 2020",
                 x = "Date",
                 y = "Number of Comments (GAM Fitted Values)") +
            geom_vline(xintercept = as.numeric(as.Date("2020-03-17")), linetype = 2,color = "red")
        
    })
}


shinyApp(ui, server)

