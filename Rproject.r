# Load necessary libraries
library(ggplot2)  # For advanced visualizations
library(dplyr)    # For data manipulation
library(corrplot) # For correlation matrix heatmap
library(GGally)   # For pairwise plot matrix (optional)

# Load the Iris dataset
data(iris)

# Display the first few rows of the dataset
head(iris)

# Summary statistics of the dataset
summary(iris)

# Check for missing values
sum(is.na(iris))  # Returns 0 if no missing values

# Create a scatter plot to visualize Sepal Length vs Sepal Width
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(title = "Sepal Length vs Sepal Width", x = "Sepal Length (cm)", y = "Sepal Width (cm)") +
  theme_minimal()

# Create a box plot to compare Sepal Length across different species
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Box Plot of Sepal Length by Species", x = "Species", y = "Sepal Length (cm)") +
  theme_minimal()

# Create a histogram of Petal Length
ggplot(iris, aes(x = Petal.Length, fill = Species)) +
  geom_histogram(bins = 15, alpha = 0.7, position = "dodge") +
  labs(title = "Histogram of Petal Length", x = "Petal Length (cm)", y = "Frequency") +
  theme_minimal()

# Create a pairwise plot (pairs plot) to show relationships between all features
pairs(iris[1:4], col = iris$Species, main = "Pairwise Plot of Iris Features")

# Create a correlation matrix heatmap to show correlations between features
cor_matrix <- cor(iris[1:4])  # Compute correlations between numerical columns
corrplot(cor_matrix, method = "circle", type = "upper", tl.col = "black", tl.srt = 45)

# Advanced visualization (Optional): Use a pairwise scatter plot matrix
ggpairs(iris, aes(color = Species))  # Requires 'GGally' package


