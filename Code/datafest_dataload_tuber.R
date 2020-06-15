library(tuber)
library(tidyverse)
library(lubridate)
library(ggplot2)
library(jsonlite)

# code help from: https://www.r-bloggers.com/using-the-tuber-package-to-analyse-a-youtube-channel/
## OAuth Code
yt_oauth("557385673262-94siom75aml70eifckua9sk348b9ae42.apps.googleusercontent.com",
         "Aam-m36KnrtPfTpvlfA74FpU", token = "")

# retrieving comment data for all top 5 videos on each channel 
foodnetwork1 <- get_all_comments(video_id = "vgztywP339U")
write.csv(foodnetwork1, file = "foodnetwork1.csv")

foodnetwork2 <- get_all_comments(video_id = "8468bpqWeIQ")
write.csv(foodnetwork2, file = "foodnetwork2.csv")

foodnetwork3 <- get_all_comments(video_id = "Cjsgna-g7zI")
write.csv(foodnetwork3, file = "foodnetwork3.csv")

foodnetwork4 <- get_all_comments(video_id = "byqaZhMTwAs")
write.csv(foodnetwork4, file = "foodnetwork4.csv")

foodnetwork5 <- get_all_comments(video_id = "UMiCy8EH1go")
write.csv(foodnetwork5, file = "foodnetwork5.csv")

jamieoliver <- get_all_comments(video_id = "3AAdKl1UYZs")
write.csv(jamieoliver, file = "jamieoliver1.csv")

jamieoliver2 <- get_all_comments(video_id = "s9r-CxnCXkg")
write.csv(jamieoliver2, file = "jamieoliver2.csv")

jamieoliver3 <- get_all_comments(video_id = "h5gcJjOSDv4")
write.csv(jamieoliver3, file = "jamieoliver3.csv")

jamieoliver4 <- get_all_comments(video_id = "1-SJGQ2HLp8")
write.csv(jamieoliver4, file = "jamieoliver4.csv")

jamieoliver5 <- get_all_comments(video_id = "D_2DBLAt57c")
write.csv(jamieoliver5, file = "jamieoliver5.csv")

recipe301 <- get_all_comments(video_id = "Ml1W1trUpJs")
write.csv(recipe301, file = "recipe30.csv")

recipe302 <- get_all_comments(video_id = "en3RYR5WMrk")
write.csv(recipe302, file = "recipe302.csv")

recipe303 <- get_all_comments(video_id = "K4TWAvZPURg")
write.csv(recipe303, file = "recipe303.csv")

recipe304 <- get_all_comments(video_id = "TA5J-5TG3U0")
write.csv(recipe304, file = "recipe304.csv")

recipe305 <- get_all_comments(video_id = "Lw7EixBGu60")
write.csv(recipe305, file = "recipe305.csv")

samthecookingguy1 <- get_all_comments(video_id = "r5KidgLsaeQ")
write.csv(samthecookingguy1, file = "samthecookingguy1.csv")

samthecookingguy2 <- get_all_comments(video_id = "U5cI4tByzE0")
write.csv(samthecookingguy2, file = "samthecookingguy2.csv")

samthecookingguy3 <- get_all_comments(video_id = "YhW7nSvLJ9Y")
write.csv(samthecookingguy3, file = "samthecookingguy3.csv")

samthecookingguy4 <- get_all_comments(video_id = "EFqxyNsLuBQ")
write.csv(samthecookingguy4, file = "samthecookingguy4.csv")

samthecookingguy5 <- get_all_comments(video_id = "xyr7ZldmxMA")
write.csv(samthecookingguy5, file = "samthecookingguy5.csv")

# comments of videos from Household Hacker
DIY_AntRemover <- get_all_comments(video_id = "cWyWnA3GojI")
DIY_HidingSpots <- get_all_comments(video_id = "H640jO_n1AQ")
DIY_HomeInvents <- get_all_comments(video_id = "l5lGF16kc50")
DIY_SecCamera <- get_all_comments(video_id = "y7h8L2zeLdE")
DIY_KitchenGadgets <- get_all_comments(video_id = "xpYqvrYy-xw")

# videos from Make
DIY_WoodenSpoon <- get_all_comments(video_id = "X6l9S08Scww") #low
DIY_SpiderRifle <- get_all_comments(video_id = "MnKJzCUy9Tw") #low
DIY_RoundTable <- get_all_comments(video_id = "LYDWp_0UWgI") #low
DIY_MusicBox <- get_all_comments(video_id = "lswfhea17WY") #low
DIY_SpaceShip <- get_all_comments(video_id = "hfY-SlC2XHc") #low

# comments of videos from Troom Troom
DIY_GiantCandy <- get_all_comments(video_id = "7KF3YAAOhvE")
DIY_SchoolSupplies <- get_all_comments(video_id = "xfsqdeIGeBQ")
DIY_SlimeStressBall <- get_all_comments(video_id = "ZfUyn42jeqk")
DIY_SuperheroFood <- get_all_comments(video_id = "YsbZZ5gGdf8")
DIY_FastFood <- get_all_comments(video_id = "RP2Dy8czN_c")

# comments of videos from 5min Crafts
DIY_ToyAccess<- get_all_comments(video_id = "bV_nCfuxaMI")
DIY_HomeDesign <- get_all_comments(video_id = "IF6KELrv4NA")
DIY_GadgetAccess <- get_all_comments(video_id = "hgvMjJVr0x4")
DIY_Solutions <- get_all_comments(video_id = "fBbKagy1dD8")
DIY_FaceTreatment <- get_all_comments(video_id = "a-vorgLxD1c")

# get stats for all the videos on each channel
jen_videos = yt_search(term="", type="video", channel_id = "UCZll0PJXjErnm97V18BpBlQ")
josh_videos = yt_search(term="", type="video", channel_id = "UChBEbMKI1eCcejTtmI32UEw")

# videostats
josh_videos2 = lapply(as.character(josh_videos$video_id), function(x){
  get_stats(video_id = x)
})
jen_videos2 = lapply(as.character(jen_videos$video_id), function(x){
  get_stats(video_id = x)
})

josh_videos2 <- josh_videos2[sapply(josh_videos2, length) == 7]
josh_videos2 = do.call(rbind.data.frame, josh_videos2)
josh_videos2$title = josh_videos$title
josh_videos2$date = josh_videos$date

jen_videos2 <- jen_videos2[sapply(jen_videos2, length) == 6]
jen_videos2 = do.call(rbind.data.frame, jen_videos2)
jen_videos2$date = jen_videos$date

josh_videos2 <- josh_videos2 %>% arrange(desc(viewCount)) %>% head(5)
jen_videos2 <- jen_videos2 %>% arrange(desc(viewCount)) %>% head(5)

# collect comments for all videos in the videos data frame
josh_comments = lapply(as.character(josh_videos2$id), function(x){
  get_comment_threads(c(video_id = x), max_results = 1000)
})
jen_comments = lapply(as.character(jen_videos2$id), function(x){
  get_comment_threads(c(video_id = x), max_results = 1000)
})

# compile the dates for all the comments left on each video into separate data frames
jen_vid_comments1 <- jen_comments[[1]]
jen_vid_comments2 <- jen_comments[[2]]
jen_vid_comments3 <- jen_comments[[3]]
jen_vid_comments4 <- jen_comments[[4]]
jen_vid_comments5 <- jen_comments[[5]]

josh_vid_comments1 <- josh_comments[[1]]
josh_vid_comments2 <- josh_comments[[2]]
josh_vid_comments3 <- josh_comments[[3]]
josh_vid_comments4 <- josh_comments[[4]]
josh_vid_comments5 <- josh_comments[[5]]


# save all datasets
write.csv(jen_videos,"~/Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/jen_videos.csv")
write.csv(josh_videos,"~/Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/josh_videos.csv")

write.csv(jen_vid_comments1,
          "~/Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/30 Life Hacks Using Coconut Oil.csv")
write.csv(jen_vid_comments2,
          "~/Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/DIY Tumblr Phone Cases Simple and Quick.csv")
write.csv(jen_vid_comments3,
          "~/Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/THRIFT FLIP back to school edition (no boys distracted).csv")
write.csv(jen_vid_comments4,
          "~/Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/DIY Tumblr Clothes WITHOUT Transfer Paper.csv")
write.csv(jen_vid_comments5,
          "~/Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/Back to School Clothing Haul (Try on) 2018.csv")
rm(jen_comments,jen_vid_comments1,jen_vid_comments2,jen_vid_comments3,jen_vid_comments4,
   jen_vid_comments5)

write.csv(josh_vid_comments1,
          "~/Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/How To Make Cubanos with Homemade Cuban Bread.csv")
write.csv(josh_vid_comments2,
          "~/Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/Making The Whataburger Honey Butter Chicken Biscuit At Home.csv")
write.csv(josh_vid_comments3,
          "~/Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/Fudgey Brownie Cookies.csv")
write.csv(josh_vid_comments4,
          "~/Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/Homemade Fancy Pop Tarts.csv")
write.csv(josh_vid_comments5,
          "~/Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/How To Make Traditional French Baguettes At Home.csv")
rm(josh_comments,josh_vid_comments1,josh_vid_comments2,josh_vid_comments3,josh_vid_comments4,
   josh_vid_comments5)



