# 1) Vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)

# 2) Data frame
polls <- data.frame(
  Name = Name,
  ABC = ABC_poll,
  CBS = CBS_poll
)

polls

polls$Diff_CBS_minus_ABC <- polls$CBS - polls$ABC
polls$Average <- (polls$CBS + polls$ABC) / 2

# Sort by highest average support
polls_sorted <- polls[order(-polls$Average), ]
polls_sorted

mean_abc <- mean(polls$ABC)
mean_cbs <- mean(polls$CBS)

top_abc <- polls$Name[which.max(polls$ABC)]
top_cbs <- polls$Name[which.max(polls$CBS)]

mean_abc
mean_cbs
top_abc
top_cbs

