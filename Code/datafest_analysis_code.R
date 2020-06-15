library(tidyverse)
library(ggplot2)
library(mgcv)

# load data
josh_comments1 <- 
  read_csv("Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/Fudgey Brownie Cookies.csv")
josh_comments2 <- 
  read_csv("Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/Homemade Fancy Pop Tarts.csv")
josh_comments3 <- 
  read_csv("Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/How To Make Cubanos with Homemade Cuban Bread.csv")
josh_comments4 <- 
  read_csv("Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/How To Make Traditional French Baguettes at Home.csv")
josh_comments5 <- 
  read_csv("Desktop/PersonalStatsProj/Datafest/datasets/Joshua Weissman/Making The Whataburger Honey Butter Chicken Biscuit at Home.csv")
josh_comments <- rbind(josh_comments1,josh_comments2,josh_comments3,josh_comments4,josh_comments5)
rm(josh_comments1,josh_comments2,josh_comments3,josh_comments4,josh_comments5)
write.csv(jen_comments,"Desktop/PersonalStatsProj/Datafest/datasets/Final Data Upload/joshuaweissman_comments.csv")


jen_comments1 <- 
  read_csv("Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/30 Life Hacks Using Coconut Oil.csv")
jen_comments2 <- 
  read_csv("Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/Back to School Clothing Haul (Try on) 2018.csv")
jen_comments3 <- 
  read_csv("Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/DIY Tumblr Clothes WITHOUT Transfer Paper.csv")
jen_comments4 <- 
  read_csv("Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/DIY Tumblr Phone Cases Simple and Quick.csv")
jen_comments5 <- 
  read_csv("Desktop/PersonalStatsProj/Datafest/datasets/JenerationDIY/THRIFT FLIP back to school edition (no boys distracted).csv")
jen_comments <- rbind(jen_comments1,jen_comments2,jen_comments3,jen_comments4,jen_comments5)
rm(jen_comments1,jen_comments2,jen_comments3,jen_comments4,jen_comments5)
write.csv(jen_comments,"Desktop/PersonalStatsProj/Datafest/datasets/Final Data Upload/jenerationdiy_comments.csv")

jo1 = read.csv("C:/Users/nicho/Desktop/csv/jamieoliver1.csv")
jo2 = read.csv("C:/Users/nicho/Desktop/csv/jamieoliver2.csv")
jo3 = read.csv("C:/Users/nicho/Desktop/csv/jamieoliver3.csv")
jo4 = read.csv("C:/Users/nicho/Desktop/csv/jamieoliver4.csv")
jo5 = read.csv("C:/Users/nicho/Desktop/csv/jamieoliver5.csv")
jo = rbind(jo1, jo2, jo3, jo4, jo5)

r301 = read.csv("C:/Users/nicho/Desktop/csv/recipe301.csv")
r302 = read.csv("C:/Users/nicho/Desktop/csv/recipe302.csv")
r303 = read.csv("C:/Users/nicho/Desktop/csv/recipe303.csv")
r304 = read.csv("C:/Users/nicho/Desktop/csv/recipe304.csv")
r305 = read.csv("C:/Users/nicho/Desktop/csv/recipe305.csv")
recipe30 = rbind(r301, r301, r303, r304, r305)

stcg1 = read.csv("C:/Users/nicho/Desktop/csv/samthecookingguy1.csv")
stcg2 = read.csv("C:/Users/nicho/Desktop/csv/samthecookingguy2.csv")
stcg3 = read.csv("C:/Users/nicho/Desktop/csv/samthecookingguy3.csv")
stcg4 = read.csv("C:/Users/nicho/Desktop/csv/samthecookingguy4.csv")
stcg5 = read.csv("C:/Users/nicho/Desktop/csv/samthecookingguy5.csv")
stcg = rbind(stcg1, stcg2, stcg3, stcg4, stcg5)

fn1 = read.csv("C:/Users/nicho/Desktop/csv/foodnetwork1.csv")
fn2 = read.csv("C:/Users/nicho/Desktop/csv/foodnetwork2.csv")
fn3 = read.csv("C:/Users/nicho/Desktop/csv/foodnetwork3.csv")
fn4 = read.csv("C:/Users/nicho/Desktop/csv/foodnetwork4.csv")
fn5 = read.csv("C:/Users/nicho/Desktop/csv/foodnetwork5.csv")
foodnetwork = rbind(fn1, fn2, fn3, fn4, fn5)

FilteredVideos_AntRemover <- DIY_AntRemover %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_HidingSpots <- DIY_HidingSpots %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_SecCamera <- DIY_SecCamera %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_HomeInvents <- DIY_HomeInvents %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_KitchenGadgets <- DIY_KitchenGadgets %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
HouseholdHacker <- rbind(FilteredVideos_AntRemover, FilteredVideos_HidingSpots,
                         FilteredVideos_SecCamera, FilteredVideos_HomeInvents,
                         FilteredVideos_KitchenGadgets)
write.csv(HouseholdHacker, file = "HouseholdHacker.csv")

FilteredVideos_WoodenSpoon <- DIY_WoodenSpoon %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_SpiderRifle <- DIY_SpiderRifle %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_RoundTable <- DIY_RoundTable %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_MusicBox <- DIY_MusicBox %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_SpaceShip <- DIY_SpaceShip %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
Make <- rbind(FilteredVideos_WoodenSpoon, FilteredVideos_SpiderRifle,
              FilteredVideos_RoundTable, FilteredVideos_MusicBox,
              FilteredVideos_SpaceShip)
write.csv(Make, file = "Make.csv")

FilteredVideos_GiantCandy <- DIY_GiantCandy %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_SchoolSupplies <- DIY_SchoolSupplies %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_SlimeStressBall <- DIY_SlimeStressBall %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_SuperheroFood <- DIY_SuperheroFood %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_FastFood <- DIY_FastFood %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
TroomTroom <- rbind(FilteredVideos_GiantCandy, FilteredVideos_SchoolSupplies,
                    FilteredVideos_SlimeStressBall, FilteredVideos_SuperheroFood,
                    FilteredVideos_FastFood)
write.csv(TroomTroom, file = "TroomTroom.csv")

FilteredVideos_ToyAccess <- DIY_ToyAccess %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_HomeDesign <- DIY_HomeDesign %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_GadgetAccess <- DIY_GadgetAccess %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_Solutions <- DIY_Solutions %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FilteredVideos_FaceTreatment <- DIY_FaceTreatment %>%
  mutate(date = as.Date(publishedAt)) %>%
  filter(date > "2020-01-01") %>%
  arrange(date)
FiveMinCrafts <- rbind(FilteredVideos_ToyAccess, FilteredVideos_HomeDesign,
                       FilteredVideos_GadgetAccess, FilteredVideos_Solutions,
                       FilteredVideos_FaceTreatment)
write.csv(FiveMinCrafts, file = "FiveMinCrafts.csv")


# count how many comments were left on each date 
josh_comments_ts <- as.Date(josh_comments$publishedAt)
josh_comments_ts = tibble(date = as.Date(Reduce(c, josh_comments_ts))) %>%
  group_by(date) %>% count()
josh_comments_ts <- josh_comments_ts %>% filter(date >= as.Date('2020-01-01'))

jen_comments_ts <- as.Date(jen_comments$publishedAt)
jen_comments_ts = tibble(date = as.Date(Reduce(c, jen_comments_ts))) %>%
  group_by(date) %>% count()
jen_comments_ts <- jen_comments_ts %>% filter(date >= as.Date('2020-01-01'))

jamie_comments_ts = as.Date(jo$publishedAt)
jamie_comments_ts = tibble(date = as.Date(Reduce(c, jamie_comments_ts))) %>%
  group_by(date) %>% count()

recipe_comments_ts = as.Date(recipe30$publishedAt)
recipe_comments_ts = tibble(date = as.Date(Reduce(c, recipe_comments_ts))) %>%
  group_by(date) %>% count()

sam_comments_ts = as.Date(stcg$publishedAt) 
sam_comments_ts = tibble(date = as.Date(Reduce(c, sam_comments_ts))) %>%
  group_by(date) %>% count()

foodnet_comments_ts = as.Date(foodnetwork$publishedAt)
foodnet_comments_ts = tibble(date = as.Date(Reduce(c, foodnet_comments_ts))) %>%
  group_by(date) %>% count()

HouseholdHacker_comments <- as.Date(HouseholdHacker$publishedAt)
HouseholdHacker_comments <- tibble(date = as.Date(Reduce(c, HouseholdHacker_comments))) %>%
  group_by(date) %>% count()

Make_comments <- as.Date(Make$publishedAt)
Make_comments <- tibble(date = as.Date(Reduce(c, Make_comments))) %>%
  group_by(date) %>% count()

TroomTroom_comments <- as.Date(TroomTroom$publishedAt)
TroomTroom_comments <- tibble(date = as.Date(Reduce(c, TroomTroom_comments))) %>%
  group_by(date) %>% count()

FiveMinCrafts_comments <- as.Date(FiveMinCrafts$publishedAt)
FiveMinCrafts_comments <- tibble(date = as.Date(Reduce(c, FiveMinCrafts_comments))) %>%
  group_by(date) %>% count()

# plot the number of comments by date (exploratory plot)
ggplot(data = josh_comments_ts) + geom_line(aes(x = date, y = n)) +
  geom_smooth(aes(x = date, y = n), se = FALSE) + ggtitle("Joshua Weissman - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = jen_comments_ts) + geom_line(aes(x = date, y = n)) +
  geom_smooth(aes(x = date, y = n), se = FALSE) + ggtitle("JenerationDIY - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = jamie_comments_ts) + geom_line(aes(x = date, y = n)) +
  geom_smooth(aes(x = date, y = n), se = FALSE) + ggtitle("Jamie Oliver - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = recipe_comments_ts) + geom_line(aes(x = date, y = n)) +
  geom_smooth(aes(x = date, y = n), se = FALSE) + ggtitle("Recipe30 - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = sam_comments_ts) + geom_line(aes(x = date, y = n)) +
  geom_smooth(aes(x = date, y = n), se = FALSE) + ggtitle("Sam the Cooking Guy - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = foodnet_comments_ts) + geom_line(aes(x = date, y = n)) +
  geom_smooth(aes(x = date, y = n), se = FALSE) + ggtitle("Food Network - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = HouseholdHacker_comments) + geom_line(aes(x = date, y = n)) +
  geom_smooth(aes(x = date, y = n), se = FALSE) + ggtitle("Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = Make_comments) + geom_line(aes(x = date, y = n)) +
  geom_smooth(aes(x = date, y = n), se = FALSE) + ggtitle("Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = TroomTroom_comments) + geom_line(aes(x = date, y = n)) +
  geom_smooth(aes(x = date, y = n), se = FALSE) + ggtitle("Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = FiveMinCrafts_comments) + geom_line(aes(x = date, y = n)) +
  geom_smooth(aes(x = date, y = n), se = FALSE) + ggtitle("Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

# make variables for sin/cos functions and random time smoothing functions
josh_comments_ts$timeInt = as.numeric(josh_comments_ts$date)
josh_comments_ts$sin12 = sin(josh_comments_ts$timeInt/365.25)
josh_comments_ts$cos12 = cos(josh_comments_ts$timeInt/365.25)
josh_comments_ts$sin6 = sin(2*josh_comments_ts$timeInt/365.25)
josh_comments_ts$cos6 = cos(2*josh_comments_ts$timeInt/365.25)
baselineDate = as.Date('2020/1/1')
baselineDateInt = as.integer(baselineDate)

jen_comments_ts$timeInt = as.numeric(jen_comments_ts$date)
jen_comments_ts$sin12 = sin(jen_comments_ts$timeInt/365.25)
jen_comments_ts$cos12 = cos(jen_comments_ts$timeInt/365.25)
jen_comments_ts$sin6 = sin(2*jen_comments_ts$timeInt/365.25)
jen_comments_ts$cos6 = cos(2*jen_comments_ts$timeInt/365.25)
baselineDate = as.Date('2020/1/1')
baselineDateInt = as.integer(baselineDate)

jamie_comments_ts$timeInt = as.numeric(jamie_comments_ts$date)
jamie_comments_ts$sin12 = sin(jamie_comments_ts$timeInt/365.25)
jamie_comments_ts$cos12 = cos(jamie_comments_ts$timeInt/365.25)
jamie_comments_ts$sin6 = sin(2*jamie_comments_ts$timeInt/365.25)
jamie_comments_ts$cos6 = cos(2*jamie_comments_ts$timeInt/365.25)
baselineDate = as.Date('2020/1/1')
baselineDateInt = as.integer(baselineDate)

recipe_comments_ts$timeInt = as.numeric(recipe_comments_ts$date)
recipe_comments_ts$sin12 = sin(recipe_comments_ts$timeInt/365.25)
recipe_comments_ts$cos12 = cos(recipe_comments_ts$timeInt/365.25)
recipe_comments_ts$sin6 = sin(2*recipe_comments_ts$timeInt/365.25)
recipe_comments_ts$cos6 = cos(2*recipe_comments_ts$timeInt/365.25)
baselineDate = as.Date('2020/1/1')
baselineDateInt = as.integer(baselineDate)

sam_comments_ts$timeInt = as.numeric(sam_comments_ts$date)
sam_comments_ts$sin12 = sin(sam_comments_ts$timeInt/365.25)
sam_comments_ts$cos12 = cos(sam_comments_ts$timeInt/365.25)
sam_comments_ts$sin6 = sin(2*sam_comments_ts$timeInt/365.25)
sam_comments_ts$cos6 = cos(2*sam_comments_ts$timeInt/365.25)
baselineDate = as.Date('2020/1/1')
baselineDateInt = as.integer(baselineDate)

foodnet_comments_ts$timeInt = as.numeric(foodnet_comments_ts$date)
foodnet_comments_ts$sin12 = sin(foodnet_comments_ts$timeInt/365.25)
foodnet_comments_ts$cos12 = cos(foodnet_comments_ts$timeInt/365.25)
foodnet_comments_ts$sin6 = sin(2*foodnet_comments_ts$timeInt/365.25)
foodnet_comments_ts$cos6 = cos(2*foodnet_comments_ts$timeInt/365.25)
baselineDate = as.Date('2020/1/1')
baselineDateInt = as.integer(baselineDate)

HouseholdHacker_comments$timeInt = as.numeric(HouseholdHacker_comments$date)
HouseholdHacker_comments$sin12 = sin(HouseholdHacker_comments$timeInt/365.25)
HouseholdHacker_comments$cos12 = cos(HouseholdHacker_comments$timeInt/365.25)
HouseholdHacker_comments$sin6 = sin(2*HouseholdHacker_comments$timeInt/365.25)
HouseholdHacker_comments$cos6 = cos(2*HouseholdHacker_comments$timeInt/365.25)
baselineDate = as.Date('2020-01-01')
baselineDateInt = as.integer(baselineDate)

Make_comments$timeInt = as.numeric(Make_comments$date)
Make_comments$sin12 = sin(Make_comments$timeInt/365.25)
Make_comments$cos12 = cos(Make_comments$timeInt/365.25)
Make_comments$sin6 = sin(2*Make_comments$timeInt/365.25)
Make_comments$cos6 = cos(2*Make_comments$timeInt/365.25)
baselineDate = as.Date('2020-01-01')
baselineDateInt = as.integer(baselineDate)

TroomTroom_comments$timeInt = as.numeric(TroomTroom_comments$date)
TroomTroom_comments$sin12 = sin(TroomTroom_comments$timeInt/365.25)
TroomTroom_comments$cos12 = cos(TroomTroom_comments$timeInt/365.25)
TroomTroom_comments$sin6 = sin(2*TroomTroom_comments$timeInt/365.25)
TroomTroom_comments$cos6 = cos(2*TroomTroom_comments$timeInt/365.25)
baselineDate = as.Date('2020-01-01')
baselineDateInt = as.integer(baselineDate)

FiveMinCrafts_comments$timeInt = as.numeric(FiveMinCrafts_comments$date)
FiveMinCrafts_comments$sin12 = sin(FiveMinCrafts_comments$timeInt/365.25)
FiveMinCrafts_comments$cos12 = cos(FiveMinCrafts_comments$timeInt/365.25)
FiveMinCrafts_comments$sin6 = sin(2*FiveMinCrafts_comments$timeInt/365.25)
FiveMinCrafts_comments$cos6 = cos(2*FiveMinCrafts_comments$timeInt/365.25)
baselineDate = as.Date('2020-01-01')
baselineDateInt = as.integer(baselineDate)

# gam model
josh_res = mgcv::gam(n ~ date + 
                       cos12 + sin12 + cos6 + sin6 +
                       s(timeInt, k = 8, pc=baselineDateInt),
                     data=josh_comments_ts, family=Gamma(link = "log"))

jen_res = mgcv::gam(n ~ date + 
                      cos12 + sin12 + cos6 + sin6 +
                      s(timeInt, k = 8, pc=baselineDateInt),
                    data=jen_comments_ts, family=Gamma(link = "log"))

jamie_res = mgcv::gam(n ~ date + 
                        cos12 + sin12 + cos6 + sin6 +
                        s(timeInt, k = 8, pc=baselineDateInt),
                      data=jamie_comments_ts, family=Gamma(link = "log"))

recipe_res = mgcv::gam(n ~ date + 
                        cos12 + sin12 + cos6 + sin6 +
                        s(timeInt, k = 8, pc=baselineDateInt),
                      data=recipe_comments_ts, family=Gamma(link = "log"))

sam_res = mgcv::gam(n ~ date + 
                        cos12 + sin12 + cos6 + sin6 +
                        s(timeInt, k = 8, pc=baselineDateInt),
                      data=sam_comments_ts, family=Gamma(link = "log"))

foodnet_res = mgcv::gam(n ~ date + 
                        cos12 + sin12 + cos6 + sin6 +
                        s(timeInt, k = 8, pc=baselineDateInt),
                      data=foodnet_comments_ts, family=Gamma(link = "log"))

gamModel_HouseholdHacker = mgcv::gam(n ~ date + 
                                       cos12 + sin12 + cos6 + sin6 +
                                       s(timeInt, k = 8, pc=baselineDateInt),
                                     data=HouseholdHacker_comments, family=Gamma(link = "log"))

gamModel_Make = mgcv::gam(n ~ date + 
                            cos12 + sin12 + cos6 + sin6 +
                            s(timeInt, k = 8, pc=baselineDateInt),
                          data=Make_comments, family=Gamma(link = "log"))

gamModel_TroomTroom = mgcv::gam(n ~ date + 
                                  cos12 + sin12 + cos6 + sin6 +
                                  s(timeInt, k = 8, pc=baselineDateInt),
                                data=TroomTroom_comments, family=Gamma(link = "log"))

gamModel_FiveMinCrafts = mgcv::gam(n ~ date + 
                                     cos12 + sin12 + cos6 + sin6 +
                                     s(timeInt, k = 8, pc=baselineDateInt),
                                   data=FiveMinCrafts_comments, family=Gamma(link = "log"))

# include fitted values in dataset
josh_comments_ts$gam_fitted <- josh_res$fitted.values
jen_comments_ts$gam_fitted <- jen_res$fitted.values
jamie_comments_ts$gam_fitted <- jamie_res$fitted.values
recipe_comments_ts$gam_fitted <- recipe_res$fitted.values
sam_comments_ts$gam_fitted <- sam_res$fitted.values
foodnet_comments_ts$gam_fitted <- foodnet_res$fitted.values
HouseholdHacker_comments$gam_fitted <- gamModel_HouseholdHacker$fitted.values
Make_comments$gam_fitted <- gamModel_Make$fitted.values
TroomTroom_comments$gam_fitted <- gamModel_TroomTroom$fitted.values
FiveMinCrafts_comments$gam_fitted <- gamModel_FiveMinCrafts$fitted.values

# final plot
ggplot(data = josh_comments_ts) + geom_line(aes(x = date, y = gam_fitted)) +
#  geom_smooth(aes(x = date, y = n), se = FALSE) + 
  ggtitle("Joshua Weissman - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = jen_comments_ts) + geom_line(aes(x = date, y = gam_fitted)) +
#  geom_smooth(aes(x = date, y = n), se = FALSE) + 
  ggtitle("JenerationDIY - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = jamie_comments_ts) + geom_line(aes(x = date, y = gam_fitted)) +
#  geom_smooth(aes(x = date, y = n), se = FALSE) + 
  ggtitle("Jamie Oliver - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = recipe_comments_ts) + geom_line(aes(x = date, y = gam_fitted)) +
#  geom_smooth(aes(x = date, y = n), se = FALSE) + 
  ggtitle("Recipe30 - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = sam_comments_ts) + geom_line(aes(x = date, y = gam_fitted)) +
#  geom_smooth(aes(x = date, y = n), se = FALSE) + 
  ggtitle("Sam the Cooking Guy - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = foodnet_comments_ts) + geom_line(aes(x = date, y = gam_fitted)) +
#  geom_smooth(aes(x = date, y = n), se = FALSE) + 
  ggtitle("Food Network - Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = HouseholdHacker_comments) + geom_line(aes(x = date, y = gam_fitted)) +
#  geom_smooth(aes(x = date, y = n), se = FALSE) + 
  ggtitle("Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = Make_comments) + geom_line(aes(x = date, y = gam_fitted)) +
#  geom_smooth(aes(x = date, y = n), se = FALSE) + 
  ggtitle("Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = TroomTroom_comments) + geom_line(aes(x = date, y = gam_fitted)) +
#  geom_smooth(aes(x = date, y = n), se = FALSE) + 
  ggtitle("Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

ggplot(data = FiveMinCrafts_comments) + geom_line(aes(x = date, y = gam_fitted)) +
#  geom_smooth(aes(x = date, y = n), se = FALSE) + 
  ggtitle("Comments by day")+
  geom_vline(xintercept = as.numeric(as.Date("2020-03-01")), linetype = 2,color = "red")

# save final fitted data
write.csv(jen_comments_ts,"Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/jen_comments_ts.csv")
write.csv(josh_comments_ts,"Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/josh_comments_ts.csv")

# load datasets
# cooking
foodnetwork <- read.csv("~/Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/foodnetworkcomments.csv")
foodnetwork$channel <- "Food Network"
jamieoliver <- read.csv("~/Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/jamieolivercomments.csv")
jamieoliver$channel <- "Jamie Oliver"
recipe30 <- read.csv("~/Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/recipe30comments.csv")
recipe30$channel <- "Recipe30"
samcooking <- read.csv("~/Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/samthecookingguycomments.csv")
samcooking$channel <- "Sam the Cooking Guy"
joshuaweissman <- read.csv("~/Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/josh_comments_ts.csv")
joshuaweissman$channel <- "Joshua Weissman"

# diy
jenerationdiy <- read.csv("~/Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/jen_comments_ts.csv")
jenerationdiy$channel <- "JenerationDIY"
household <- read.csv("~/Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/HouseholdHacker_comments.csv")
household$channel <- "Household Hackers"
makechannel <- read.csv("~/Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/Make_comments.csv")
makechannel$channel <- "Make"
fivemincrafts <- read.csv("~/Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/FiveMinCrafts_comments.csv")
fivemincrafts$channel <- "5-Minute Crafts"
troomtroom <- read.csv("~/Desktop/PersonalStatsProj/Datafest/appdir/Final Datasets/TroomTroom_comments.csv")
troomtroom$channel <- "Troom Troom"

yt_data <- rbind(fivemincrafts,foodnetwork,household,jamieoliver,jenerationdiy,joshuaweissman,makechannel,recipe30,
                 samcooking,troomtroom)
yt_data$date <- as.Date(yt_data$date)

# save as Rdata files
save(yt_data, file = "Final Datasets/yt_data.RData")

