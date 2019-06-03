The goal of my Shiny App is to tell you what RPG's you should try out depending on what you are looking for in an RPG. The criteria that you are allowed to play with are:  
Rating - how good the game supposedly is. The scale is out of 5.  
Game length - how many hours is expected to beat the game.  
Difficulty - how challenging the game supposedly is. The scale is also out of 5.  
Completion rate - the percentage of GameFAQs users who own(ed) the game and successfully beat the game.  
You can access my application at https://ripsilon.shinyapps.io/shiny_app/. Note that this link will be taken down on June 11th, 2019.  

# Deploying the application locally  
Download this folder. In RStudio, change your directory to where you saved the folder. Then run the entire app.R file.  

# Making an application on shinyapps.io
Download this folder. In RStudio, change your directory to where you saved the folder. Run the following lines:  
library(rsconnect)  
rsconnect::setAccountInfo(name='(insert your username here)', token='(insert your token here)', secret='(insert your SECRET here)')  
deployApp()  

# Notes  
This is assuming you already installed the shiny, tidyr, dplyr, and rsconnect libraries in RStudio. Also, you need to have an account at shinyapps.io.  
