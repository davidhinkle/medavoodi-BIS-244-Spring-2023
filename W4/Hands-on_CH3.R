# Hands-on Week - Working with **gapminder** Data
# Please be advised that this file should be run without any modification on any RStudio software. Therefore, it is essential to include all necessary libraries and prerequisit syntaxes. 

# a) What happens when you put the *geom_smooth()* function before *geom_point()* instead of after it in *Healy_CH3.R*? What does this tell you about how the plot is drawn? Think about how this might be useful when drawing plots. 
# =========================================== Part a =======================
library(gapminder)
<<<<<<< Updated upstream
library(tidyverse)

p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y=lifeExp))

p  + geom_smooth() + geom_point()
=======
library(here)
library(tidyverse)
library(socviz)

p <- ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_smooth() + geom_point()
>>>>>>> Stashed changes


# +++++++++++++++++++++++++++++++++++++++ End of Part a +++++++++++++

# b) Change the mappings in the *aes()* function so that you plot **life expectancy** against **population (pop)** rather than per capita GDP. Also, refine all functions/labels accordingly. What does that look like? What does it tell you about the unit of observation in the dataset?
# =========================================== Part b =======================
<<<<<<< Updated upstream
p <- ggplot(data = gapminder,
            mapping = aes(x = pop,
                          y=lifeExp))
p + geom_point(alpha = 0.3) + geom_smooth(method = "gam") +
  scale_x_log10(labels = scales::dollar) +
  labs(x = "log GDP Per Capita", y = "Life Expectancy in Years",
       title = "Economic Growth and Life Expectancy",
=======
p <- ggplot(data = gapminder, mapping = aes(x = pop, y = lifeExp))

p + geom_point(alpha = 0.3) + geom_smooth(method = "gam") +
  scale_x_log10() +
  labs(x = "Population", y = "Life Expectancy in Years",
       title = "Population Growth and Life Expectancy",
>>>>>>> Stashed changes
       subtitle = "Data points are country-years",
       caption = "Source: Gapminder.")


<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
# +++++++++++++++++++++++++++++++++++++++ End of Part b +++++++++++++

# c) Try some alternative scale mappings. Besides *scale_x_log 10()*, you can try *scale_x_sqrt()* for population (pop)
# =========================================== Part c =======================
<<<<<<< Updated upstream
p + geom_point(alpha = 0.3) + geom_smooth(method = "gam") +
  scale_x_sqrt(labels = scales::dollar) +
  labs(x = "log GDP Per Capita", y = "Life Expectancy in Years",
       title = "Economic Growth and Life Expectancy",
=======

p + geom_point(alpha = 0.3) + geom_smooth(method = "gam") +
  scale_x_sqrt() +
  labs(x = "Population", y = "Life Expectancy in Years",
       title = "Population Growth and Life Expectancy",
>>>>>>> Stashed changes
       subtitle = "Data points are country-years",
       caption = "Source: Gapminder.")


<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
# +++++++++++++++++++++++++++++++++++++++ End of Part c +++++++++++++

# d) What happens if you map *color* to year instead of *continent*? 
# =========================================== Part d =======================
<<<<<<< Updated upstream
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp,
                          color = year))
p + geom_point() +
  geom_smooth(method = "loess") +
  scale_x_log10()


=======
p <- ggplot(data = gapminder, mapping = aes(x = pop, y = lifeExp), color = year)

p + geom_point(alpha = 0.3, mapping = aes(color = year)) + geom_smooth(method = "gam") +
  scale_x_sqrt() +
  labs(x = "Population", y = "Life Expectancy in Years",
       title = "Population Growth and Life Expectancy",
       subtitle = "Data points are country-years",
       caption = "Source: Gapminder.")
>>>>>>> Stashed changes

# +++++++++++++++++++++++++++++++++++++++ End of Part d +++++++++++++

# * e) Instead of mapping *color = year* in part d, what happens if you try *color = factor(year)*?
# =========================================== Part e =======================
<<<<<<< Updated upstream
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp,
                          color = factor(year)))
p + geom_point() +
  geom_smooth(method = "loess") +
  scale_x_log10()



# +++++++++++++++++++++++++++++++++++++++ End of Part e +++++++++++++
=======

p <- ggplot(data = gapminder, mapping = aes(x = pop, y = lifeExp), color = factor(year))

p + geom_point(alpha = 0.3, mapping = aes(color = factor(year))) + geom_smooth(method = "gam") +
  scale_x_sqrt() +
  labs(x = "Population", y = "Life Expectancy in Years",
       title = "Population Growth and Life Expectancy",
       subtitle = "Data points are country-years",
       caption = "Source: Gapminder.")


# +++++++++++++++++++++++++++++++++++++++ End of Part e +++++++++++++
>>>>>>> Stashed changes
