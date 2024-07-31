x <- 42
y = 42.5
x
y
## Vectors
my_vector <- c(40,42,44,46,50)
my_vector

vectorizer = c(50,52,54,56)
vectorizer

report = "I love data science"
report

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)
poker_vector
# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)
poker_vector
# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
# Assign the names of the day to poker_vector
names(poker_vector) <-  days_vector
# Total winnings with poker
total_poker <- sum(poker_vector)
total_poker
# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]
poker_wednesday

roulette_vector <- c(-24, -50, 100, -350, 10)
roulette_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]
roulette_selection_vector
# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c("Monday","Tuesday", "Wednesday")]
# Calculate the average of the elements in poker_start
mean(poker_start)
mean

#Which days did you make money on poker?
selection_vector <- poker_vector > 0
selection_vector

## Matrices
# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)
box_office

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office,byrow = TRUE, nrow = 3)
star_wars_matrix

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

star_wars_matrix2 <- matrix(c(474.5, 310.7, 380.3, 552.5, 338.7, 468.5), byrow=TRUE, nrow=3)
# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix  
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2 )
all_wars_matrix

# all_wars_matrix is available in your workspace
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector

## Selection of matrix elements
# all_wars_matrix is available in your workspace
all_wars_matrix

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[, 2]

# Average non-US revenue
mean(all_wars_matrix[,2])

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2, 2]

# Average non-US revenue for first two movies
mean(non_us_some)

## A little arithmetic with matrices
# all_wars_matrix is available in your workspace
all_wars_matrix

# Estimate the visitors
visitors <- all_wars_matrix / 5

# Print the estimate to the console
visitors

ticket_prices_matrix <- matrix(c(5, 6, 7, 4, 4.5, 4.9, 5, 6, 7, 4, 4.5, 4.9), byrow=TRUE, nrow=6)
ticket_prices_matrix

# all_wars_matrix and ticket_prices_matrix are available in your workspace
all_wars_matrix
ticket_prices_matrix

# Estimated number of visitors
visitors <- # Estimated number of visitors
  visitors <- all_wars_matrix / ticket_prices_matrix

# US visitors
us_visitors <- visitors[ ,1]

# Average number of US visitors
mean(us_visitors)

##Factors
# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)

# Print out factor_sex_vector
factor_sex_vector

# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")

factor_survey_vector

# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Generate summary for survey_vector
summary(survey_vector)

# Generate summary for factor_survey_vector
summary(factor_survey_vector)

## ordered factors
# Create speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector, ordered=TRUE, levels=c("slow", "medium", "fast"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)

# Create factor_speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2 > da5


##Data frames
# URL of the dataset
url <- "https://raw.githubusercontent.com/Explore-AI/Public-Data/master/Data/regression_sprint/mtcars.csv"

# Reading the CSV file from the URL
df <- read.csv(url, row.names = 1)
print(df)

# Call head() on mtcars(df)
head(df)

# Investigate the structure of mtcars
str(df)


# Definition of vectors
name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
print(planets_df)
str(planets_df)
# Print out diameter of Mercury (row 1, column 3)
print(planets_df[1,3])

# Print out data for Mars (entire fourth row)
print(planets_df[4, ])
# Select first 5 values of diameter column
print(planets_df[1:5, "diameter"])
# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector
print(rings_vector)
# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, ]

##use of subset function
# Select planets with diameter < 1
subset(planets_df, subset = diameter < 1)

# Use order() to create positions
positions <-  order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions, ]

## lists
# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- df[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- df[1:10,]

# Adapt list() call to give the components names
my_list <- list(vec=my_vector, mat=my_matrix, df1=my_df)

# Print out my_list
print(my_list)

# The variables mov, act and rev are available

# Finish the code to build shining_list
shining_list <- list(moviename = mov, actors = act, reviews = rev)

# Install the tinytex package
if (!require(tinytex)) {
  install.packages('tinytex')
}

# Install TinyTeX
tinytex::install_tinytex()

# Use the table from the exercise to define the comments and scores vectors
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot")

# Save the average of the scores vector as avg_review
avg_review <- mean(scores)
print(avg_review)
# Combine scores and comments into the reviews_df data frame
reviews_df = data.frame(scores, comments)
print(reviews_df)

# Create and print out a list, called departed_list
departed_list <- list(movie_title, movie_actors, reviews_df, avg_review)
print(departed_list)
