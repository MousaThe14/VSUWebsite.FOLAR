#means of transportation
Xmeans_commute<- get_acs(geography = "county", state = "VA", county = "Petersburg", variable = c(Car = "B08006_003", carpool = "B08006_004", public = "B08006_008", bike = "B08006_014", walk = "B08006_015"), geometry = TRUE)

ggplot(Xmeans_commute, aes(x = variable, y = reorder(estimate, variable)))+
  geom_col(position = "dodge", fill = "blue")+
  labs(x = "Means of Transportation",
       y = "Population",
       legend = "Tract", 
       title = "Preferred means of transportation", 
       subtitle = "Petersburg, Virginia", 
       caption = "Data source: 2018 ACS.\nData acquired with the R tidycensus package.")
