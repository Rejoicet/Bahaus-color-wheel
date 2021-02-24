library(ggplot2)
d <- data.frame(
  x = rep(seq(1,360,30),7),
  y = c(rep(1,12),seq(2,61),rep(62,12))
)
str(d)
d$y<-factor(d$y)
View(d)

ggplot(d, aes(x = x, fill = y)) +
  geom_histogram(binwidth =30, boundary=0) +
  scale_fill_manual(values=c("#2d2d2e", 
                             "#62373f", "#6a3b41", "#79463f", "#804526", "#945923", "#96803f", "#8f8948", "#4e694a", "#29434e", "#2c4b63", "#3d4e6f", "#464862", 
                             "#6f3846", "#7a3d47", "#a24a45", "#bb491c", "#d1892c", "#e5cd56", "#aeae57", "#587f5d", "#2b6574", "#28698c", "#415987", "#484873", 
                             "#a84354", "#bf1d30", "#e0252b", "#fc592f", "#ffae3f", "#fbe457", "#f8e648", "#76b07e", "#2a869e", "#1781be", "#3d6ec4", "#5963a2", 
                             "#da7d83", "#d66867", "#f49182", "#fe9758", "#ffd968", "#fdf3ae", "#fdec90", "#bbd7a8", "#8cc9c0", "#85c7de", "#8baed6", "#91a2ca", 
                             "#e4c7c5", "#e8cbc8", "#f0dfd5", "#f5dcc4", "#f4e5bc", "#f3f1d6", "#f1f0d4", "#ebeedb", "#d6e5da", "#cadfe3", "#d7e4ed", "#cacfdc", 
                             "#efeee8")) +
  coord_polar() +
  scale_x_continuous(limits = c(0,360))