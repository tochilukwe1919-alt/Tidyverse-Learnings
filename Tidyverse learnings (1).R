install.packages("tidyverse")
library(tidyverse)
install.packages("palmerpenguins")
library(palmerpenguins)
penguins
penguins_raw
glimpse(penguins)
View(penguins)
install.packages("ggthemes")
library(ggthemes)
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +   geom_point(mapping = aes(colour = species, shape = species))   +   geom_smooth(method = "lm") + labs(title =  "Body mass and flipper length", subtitle = "Dimensions for Adelie, Chinstrap and Gentoo Penguins", x = "Flipper length (mm)", y = "Body mass (g)", colour = "Species", shape = "Species") + scale_color_colorblind()

# Q0 How many rows are in penguins? How many columns?
  
  
  
#Q1 What does the bill_depth_mm variable in the penguins data frame describe? Read the help for ?penguins to find out.
#bill_depth_mm, a number denoting bill depth (millimeters)


#Q2 Make a scatterplot of bill_depth_mm vs. bill_length_mm. That is, make a scatterplot with bill_depth_mm on the y-axis and bill_length_mm on the x-axis. Describe the relationship between these two variables.
  plot(x = penguins$bill_length_mm, y = penguins$bill_depth_mm, main = "Bill length vs Bill Depth", xlab = "Bill length (mm)",  ylab = "Bill depth (mm)", xlim = c(30, 60))
#OR
ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point() +
  labs(title = "Bill length vs Bill Depth", x = "Bill length (mm)", y = "Bill depth (mm)")
#very weak correlation


#Q3 What happens if you make a scatterplot of species vs. bill_depth_mm? What might be a better choice of geom?
  #geom_boxplot(), to show spread and distribution
  
#Q4 Why does the following give an error and how would you fix it?
  
  ggplot(data = penguins) + geom_point()
# ggplot requires aesthetic mapping (x and y variables)


#Q5 What does the na.rm argument do in geom_point()? What is the default value of the argument? Create a scatterplot where you successfully use this argument set to TRUE.
# the default value of the argument is false which is what is responsible for warning messages. setting it to TRUE silences this
  ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
    geom_point(na.rm = TRUE)

#Q6 Add the following caption to the plot you made in the previous exercise: “Data come from the palmerpenguins package.” Hint: Take a look at the documentation for labs().
  ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) + geom_point(na.rm = TRUE) + labs(caption = "Data come from the palmer penguins package")


#Q7 Recreate the following visualization. What aesthetic should bill_depth_mm be mapped to? And should it be mapped at the global level or at the geom level?
  ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) + geom_point(mapping = aes(colour = bill_depth_mm),na.rm = TRUE) + labs(caption = "Data come from the palmer penguins package") + geom_smooth()
  
  
  
# bill depth is to be mapped at local level
  
  