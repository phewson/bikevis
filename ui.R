library(shiny)
VectCasAccCycl <- read.csv("data/VectCasAccCycl.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
scenarios <- read.csv("data/scenarios.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())

# Define UI for application that draws a histogram
shinyUI(navbarPage("Impact of Bikeability on road collisions",
                   
                   tabPanel("Homepage",
                            titlePanel(""),
                            verticalLayout(
                            fluidRow(
                              column(8,
                                h3("What is Bikeability?"),
                                helpText("Bikeability is a national program which was created in 2006 in England, Wales and Scotland. It is administered by the Department of Transport and is approved by RoSPA (Royal Society for Prevention of accidents), Road Safety GB, British Cycling, CTC (Cyclists’ Touring Club), Sustrans and Cycling England.", align = "justify"),
                                helpText("Schools in the country may or not decide to host Bikeability sessions which permit children to acquire skills to ride a bike on roads. This program is designed to provide encouragement to children to ride safely on the road in traffic. Adults can also join the classes.", align = "justify"),
                                helpText("Bikeability program is organized in three levels L1, L2 and L3:", align="justify"),
                                helpText("•  The first level permits to learn to control a bike away from roads and cars.", align="justify"),
                                helpText("•	The second level consists in training on roads to be prepared to ride a bike in normal conditions of traffic.", align="justify"),
                                helpText("•	The third level is more technical and is often delivered one-to-one.", align="justify"),
                                helpText("We focused on the number of pupils who attended the first and the second Bikeability level during their years 5 and 6 of their education.", align="justify"),
                                helpText("In this application, we study the impact of Bikeability delivery on road collisions.")
                              ),
                              column(4,
                                imageOutput("image_homepage")
                              )
                              ),
                            hr(),
                              helpText("Authors: Manon Pruvost-Couvreur and Clémentine Verdin"),
                              helpText("From: Polytech Clermont-Ferrand"),
                              helpText("Date: June 2015")
                            )
                   ),
                   
                   tabPanel("Maps",
                            titlePanel(""),
                            fluidRow(sidebarPanel(
                                radioButtons("choix", label = h3("Choose the maps"),  choices = list("Number" = "number", "Ratio" = "ratio"),
                                             selected = "number"),
                                hr(),
                                radioButtons("colors", label=h3("Choose the colors of the maps"), choices=list("Reds and blues", "Rainbow"), selected="Reds and blues"),
                                hr(),
                                h3("Explanations"),
                                helpText("Number : Draws two maps with the number of pupils who attended Bikeability since 2006 and the number of collisions involving 9 to 17 years old cyclists in each local authority.", align = "justify"),
                                helpText("Ratio : Draws two maps with the number of pupils who attended Bikeability since 2006 and the number of collisions involving 9 to 17 years old cyclists. Both are divided by the population in each local authority.", align = "justify"),
                                width = 3
                              ),
                            
                              mainPanel(
                                column(6, plotOutput("map1")),
                                column(6, plotOutput("map2"))
                              )
                            )
                   ),
                   
                   tabPanel("Graphic comparison",
                            titlePanel(""),
                            verticalLayout(
                              wellPanel(
                                 radioButtons("var", label = h3("Choose the graph"),  choices = list("Local authorities sorted by Bikeability delivery rate" = "Bikeability", "Local authorities sorted by collisions rate" = "Accidents", "Bikeability delivery rate against collisons rate" = "Other"),
                                               selected = "Bikeability"),
                                 hr(),
                                 h3("Explanations"),
                                 helpText("On the first and second graphs:", align="justify"),
                                 helpText("Red points represent the Bikeability rate. It is the number of fifth-or-sixth-year pupils who attended Bikeability from 2006 to 2012 divided by the population of the local authority.", align = "justify"), 
                                 helpText("Blue points represent the collisions rate. It is the number of collisions involving 9 to 17 years old cyclists in 2012 divided by the population of the local authority.", align = "justify"),
                                 helpText("On the third graph:", align="justify"),
                                 helpText("The correlation coefficient is", cor(SortBikeAcc$RatioBikeSince2006, SortBikeAcc$RatioAcc), ". There is no correlation between Bikeability delivery rate and road collisions rate.", align="justify"),
                                 hr(),
                                 h3("Local authority selected"),
                                 verbatimTextOutput("plot_clickinfo")
                              ),  
                              plotOutput("distPlot", click = "plot_click")
                           )     
                   ),
                   
                   tabPanel("Age range and severity",
                            titlePanel(""),
                            sidebarLayout(
                              sidebarPanel(
                                sliderInput("slider", label = h3("Cyclists' age"), min = 0, max = 99, value = c(9, 17)),
                                helpText("If we look at 9 to 17 years old cyclists (young people who may have attended Bikeability since the beginning of the program) we can see that the number of crashes decreases over years.", align = "justify"),
                                helpText("However, if we look at adults (for example people over 40 years old) the number of crashes increases over years.", align = "justify"),
                                helpText("We can note the shape of the two graphs is the same. Consequently, in all that follows, we will focus on collisions involving only one bike and one car.", align = "justify"),
                                hr(),
                                radioButtons("sev", label = h3("Choose the collisions' severity"),  choices = list("All collisions"= 0, "Fatal collisions" = 1, "Serious collisions" = 2, "Slight collisions"= 3),
                                             selected = 0),
                                hr(),
                                selectInput("LA", h3("Local authority selected"), choices=noquote(unique(as.vector(rbind("England", unique(VectCasAccCycl$LAName))))[-c(2)]))
                              ),
                              
                              mainPanel(plotOutput("distPlot2", width = "600px", height = "400px"), plotOutput("distPlot3", width = "600px", height = "400px"))
                            )
                   ),
                   
                   tabPanel("Kinds of collisions",
                            titlePanel(""),
                            sidebarLayout(
                              sidebarPanel(
                                h3("Scenarios"),
                                helpText("The red bars represent the collisions wich took place before the beginning of Bikeability and the blue bars, the collisions which took place after.", align = "justify"),
                                hr(),
                                selectInput("LAScenar", h3("Local authority selected"), choices=noquote(unique(as.vector(rbind("England", unique(VectCasAccCycl$LAName))))[-c(2)])),
                                hr(),
                                sliderInput("sliderAge", label = h3("Cyclists' age"), min = 0, max = 99, value = c(9, 17)),
                                hr(),
                                h3("Scenario selected"),
                                verbatimTextOutput("plot_clickdescription"),
                                imageOutput("plot_clickinfo2")                                
                              ),
                              mainPanel(plotOutput("distPlot4", height = "800px", click="plot_click2"))
                            ),
                            
                            sidebarLayout(
                            sidebarPanel(
                              h3("Zoom on a scenario"),
                              selectInput("LAScenar2", h3("Local authority selected"), choices=noquote(unique(as.vector(rbind("England", unique(VectCasAccCycl$LAName))))[-c(2)])),
                              hr(),
                              sliderInput("sliderAge2", label = h3("Cyclists' age"), min = 0, max = 99, value = c(9, 17)),
                              hr(),
                              selectInput("Scenario", h3("Scenario selected"), choices=noquote(scenarios), selected = "GoingAhead"),
                              verbatimTextOutput("plot_clickdescription2"),
                              imageOutput("image_scenario")
                            ),
                            mainPanel(plotOutput("distPlot5", width="600px"))
                            )
                   )
))
