
# Downloading data files into R -------------------------------------------

download.file(url="https://ndownloader.figshare.com/files/2292169", destfile = "portal_data_joined.csv")
surveys <- read.csv("portal_data_joined.csv")
head(surveys)

#  The code below works when a 'data' folder is first created.
download.file(url="https://ndownloader.figshare.com/files/2292169", destfile = "data/portal_data_joined.csv")

View(surveys)
ncol(surveys)
colnames(surveys)
rownames(surveys)


# Subsetting columns and rows ---------------------------------------------
 
surveys[1,1] # Gives first row and column of df
surveys[1]
surveys[1, ] # Gives first row of the entire df
surveys[, 1] # Gives first column of entire df
surveys[1, 6] 
surveys[1:9, 1:5] # Subsets the first 9 rows and first 5 columns

dim(surveys) # to obtain total number of rows vs columns
str(surveys) # Obtaining summary of structure of the df

#  Subsetting by column id
head(surveys["species_id"])
levels(surveys$sex)
levels(surveys$taxa)
levels(surveys$year)
surveys[3:12, 4]


sex <- factor(c("male", "female", "female", "male"))
levels(sex) # Default of level command gives results organized in alphabetic order
nlevels(sex)
sex
sex <- factor(sex, levels = c("male", "female")) # Reordering levels
sex


# Using plot function -----------------------------------------------------

plot(surveys$sex)

# Changing factors to numeric ---------------------------------------------


year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
class(year_fct)
as.numeric(year_fct)   # Wrong! And there is no warning...
year_fct
year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.character(year_fct)
as.numeric(as.character(year_fct)) # Works...
levels(year_fct)
as.numeric(levels(year_fct))[year_fct]    # The recommended way.



