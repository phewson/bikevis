library(shiny)
Accidents1Bike1CarAllages <- read.csv("data/Accidents1Bike1CarAllages.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors(), colClasses = c("numeric", "character", "numeric", "numeric", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "character", "numeric", "numeric"))
Bikeability2006_13NewNames <- read.csv("data/Bikeability2006_13NewNames.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
cyclists <- read.csv("data/cyclists.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors(), colClasses = c("numeric", "numeric", "character", "numeric", "character", "numeric"))
paretoo <- read.csv("data/paretoo.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
SortBikeAcc <- read.csv("data/SortBikeAcc.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
VectCasAccCycl <- read.csv("data/VectCasAccCycl.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
BikeCarEnteringRoundabout <- read.csv("data/scenari/BikeCarEnteringRoundabout.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
BikeCarLeavingRoundabout <- read.csv("data/scenari/BikeCarLeavingRoundabout.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
BikeEnteringCarLeavingRoundabout <- read.csv("data/scenari/BikeEnteringCarLeavingRoundabout.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
CarEnteringBikeLeavingRoundabout <- read.csv("data/scenari/CarEnteringBikeLeavingRoundabout.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
CarEnteringRoundabout <- read.csv("data/scenari/CarEnteringRoundabout.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
CarLeavingRoundabout <- read.csv("data/scenari/CarLeavingRoundabout.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
ChangingLane <- read.csv("data/scenari/ChangingLane.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
ChangingLaneCar <- read.csv("data/scenari/ChangingLaneCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
ChangingLaneJunction <- read.csv("data/scenari/ChangingLaneJunction.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
ChangingLaneJunctionCar <- read.csv("data/scenari/ChangingLaneJunctionCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
CycleLane <- read.csv("data/scenari/CycleLane.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
Cycleway <- read.csv("data/scenari/Cycleway.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
DoorOpen <- read.csv("data/scenari/DoorOpen.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnterCarriageway <- read.csv("data/scenari/EnterCarriageway.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringLeft <- read.csv("data/scenari/EnteringLeft.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringLeftCar <- read.csv("data/scenari/EnteringLeftCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringLeftCarPrivate <- read.csv("data/scenari/EnteringLeftCarPrivate.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringLeftPrivate <- read.csv("data/scenari/EnteringLeftPrivate.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringLeftT <- read.csv("data/scenari/EnteringLeftT.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringLeftTCar <- read.csv("data/scenari/EnteringLeftTCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringRight <- read.csv("data/scenari/EnteringRight.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringRightCar <- read.csv("data/scenari/EnteringRightCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringRightCarPrivate <- read.csv("data/scenari/EnteringRightCarPrivate.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringRightPrivate <- read.csv("data/scenari/EnteringRightPrivate.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringRightT <- read.csv("data/scenari/EnteringRightT.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringRightTCar <- read.csv("data/scenari/EnteringRightTCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
EnteringRoundabout <- read.csv("data/scenari/EnteringRoundabout.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
Footway <- read.csv("data/scenari/Footway.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
GoingAhead <- read.csv("data/scenari/GoingAhead.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
GoingAheadCrossroads <- read.csv("data/scenari/GoingAheadCrossroads.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
GoingAheadOtherJunction <- read.csv("data/scenari/GoingAheadOtherJunction.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
GoingAheadPrivate <- read.csv("data/scenari/GoingAheadPrivate.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
GoingAheadT <- read.csv("data/scenari/GoingAheadT.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingLeft <- read.csv("data/scenari/LeavingLeft.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingLeftCar <- read.csv("data/scenari/LeavingLeftCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingLeftCarPrivate <- read.csv("data/scenari/LeavingLeftCarPrivate.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingLeftPrivate <- read.csv("data/scenari/LeavingLeftPrivate.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingLeftT <- read.csv("data/scenari/LeavingLeftT.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingLeftTCar <- read.csv("data/scenari/LeavingLeftTCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingRight <- read.csv("data/scenari/LeavingRight.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingRightCar <- read.csv("data/scenari/LeavingRightCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingRightCarPrivate <- read.csv("data/scenari/LeavingRightCarPrivate.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingRightPrivate <- read.csv("data/scenari/LeavingRightPrivate.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingRightT <- read.csv("data/scenari/LeavingRightT.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingRightTCar <- read.csv("data/scenari/LeavingRightTCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
LeavingRoundabout <- read.csv("data/scenari/LeavingRoundabout.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
Overtaking <- read.csv("data/scenari/Overtaking.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
OvertakingCar <- read.csv("data/scenari/OvertakingCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
OvertakingCrossroads <- read.csv("data/scenari/OvertakingCrossroads.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
OvertakingCrossroadsCar <- read.csv("data/scenari/OvertakingCrossroadsCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
OvertakingPrivate <- read.csv("data/scenari/OvertakingPrivate.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
OvertakingPrivateCar <- read.csv("data/scenari/OvertakingPrivateCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
OvertakingT <- read.csv("data/scenari/OvertakingT.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
OvertakingTCar <- read.csv("data/scenari/OvertakingTCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
ParkedCar <- read.csv("data/scenari/ParkedCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
ReversingCar <- read.csv("data/scenari/ReversingCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
Roundabout <- read.csv("data/scenari/Roundabout.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
StoppedCar <- read.csv("data/scenari/StoppedCar.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())
description <- read.csv("data/description.csv", na.strings = c("..","x"),  as.is = default.stringsAsFactors())


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Homepage
  output$image_homepage <- renderImage({ 
    return ( list (
      src = "images/bikeability_logo.jpg",
      filetype = "image/jpg",
      alt = paste("Illustration"),
      width=300
      ))
  }, deleteFile = FALSE)
  
  
  # Tab maps
  reacMap <- reactive({
    # I had to do : install.packages("sp"), install.packages("maptools"), install.packages("gpclib"), install.packages("RColorBrewer")
    
    load("HAs.Rdata")  
    require(maptools)

    load("data/blah.Rdata")
   
    ### This is the standard routine to create a map
    ## Extract the IDs from the map
    IDs <- sapply(slot(blah, "polygons"), function(x) slot(x, "ID"))
    # put the IDs in a dataframe
    temp <- data.frame(IDs=IDs)
    # remember the order.
    temp$order <- c(1:length(temp$IDs))
    
    
    
    #### Now I get some data and we can merge them
    temp <- merge(temp, Bikeability2006_13NewNames, all.x = TRUE)
    head(temp)
    
    # need to set the row names of this temp data frame to be the IDs column
    row.names(temp) <- as.character(temp$IDs)
    
    ### and finally we can merge the data into the map
    eng.bike <- SpatialPolygonsDataFrame(blah, temp)   
    
    require(RColorBrewer)
    if (input$colors=="Reds and blues")
    {
      colors <- rev(brewer.pal(9,"Reds"))
    }
    else
    {
      colors <- rev(c("orchid1", "purple1", "navy", "dodgerblue", "cyan1", "chartreuse2", "yellow1", "darkorange1", "red4"))
    }
    
    if (input$choix=="number")
    {
      spplot(eng.bike, zcol=c("TotBikeSince2006"), cuts = 8, col.regions=colors,
             main = "Map of Bikeability delivery", col = "white")
    }
    else
    {
      spplot(eng.bike, zcol=c("RatioBikeSince2006"), cuts = 8, col.regions=colors,
             main = "Map of Bikeability delivery", col = "white")
    }
  })
  
  output$map1 <- renderPlot({reacMap()})
  
  
  reacMap2 <- reactive({
    # I had to do : install.packages("sp"), install.packages("maptools"), install.packages("gpclib"), install.packages("RColorBrewer")
    
    load("HAs.Rdata")  
    require(maptools)
    
    load("data/blah.Rdata")
    
    ### This is the standard routine to create a map
    ## Extract the IDs from the map
    IDs <- sapply(slot(blah, "polygons"), function(x) slot(x, "ID"))
    # put the IDs in a dataframe
    temp <- data.frame(IDs=IDs)
    # remember the order.
    temp$order <- c(1:length(temp$IDs))
    
    
    
    #### Now I get some data and we can merge them
    temp <- merge(temp, Bikeability2006_13NewNames, all.x = TRUE)
    head(temp)
    
    # need to set the row names of this temp data frame to be the IDs column
    row.names(temp) <- as.character(temp$IDs)
    
    ### and finally we can merge the data into the map
    eng.bike <- SpatialPolygonsDataFrame(blah, temp)   
    
    require(RColorBrewer)
    if (input$colors=="Reds and blues")
    {
      colors <- rev(brewer.pal(9,"Blues"))
    }
    else
    {
      colors <- rev(c("orchid1", "purple1", "navy", "dodgerblue", "cyan1", "chartreuse2", "yellow1", "darkorange1", "red4"))
    }
    
    if (input$choix=="number")
    {
      spplot(eng.bike, zcol=c("NbAcc"), cuts = 8, col.regions=colors,
             main = "Map of road collisions", col = "white")
    }
    else
    {
      spplot(eng.bike, zcol=c("RatioAcc"), cuts = 8, col.regions=colors,
             main = "Map of road collisions", col = "white")
    }
  })
  
  output$map2 <- renderPlot({reacMap2()})
  
  
  # Tab graphic comparison
  reacPlot <- reactive({
    if (input$var!="Other")
    {
      par(mar=c(5,4,4,5)+.1)
      plot(SortBikeAcc$RatioAcc[SortBikeAcc$sort==input$var], col = "blue", xlim=c(1,113), ylim=c(0,0.0002), xlab = "Local Authority", ylab = "Collisions in 2012",
           main = "Bikeability vs crashes", pch=19)
      par(new=TRUE)
      plot(SortBikeAcc$RatioBikeSince2006[SortBikeAcc$sort==input$var], xlim=c(1,113), ylim=c(0,0.1), col="red", xlab="", ylab="", yaxt="n", pch=19)
      axis(4)
      mtext("Bikeability since 2006", side=4, line=3)
      grid(nx = 40, ny = NA, col = "green", lty = "dotted")
      legend("top", legend=c("Collisions", "Bikeability"), col=c("blue", "red"), pch=19, inset = c(0.1, 0.1)) 
    }
    else
    {
      plot(SortBikeAcc$RatioAcc, SortBikeAcc$RatioBikeSince2006, col=rainbow(113), xlab="Collisions rate in 2012", 
           ylab="Bikeability delivery rate since 2006", main="Graphic comparison between Bikeability delivery and road collisions")
    }
  })
  
  output$distPlot <- renderPlot({
     reacPlot()
  })
  
 
  
  reac <- reactive({
    if (input$var!="Other")
    {      
      if (!is.null(input$plot_click$x))
      {
        if (input$var=="Bikeability" & input$plot_click$x>=0.5 & input$plot_click$x<=113.5)
        {
          cat(SortBikeAcc$LAName[input$plot_click$x+0.5])
        }
        else
        {
          if (input$var=="Accidents" & input$plot_click$x>=0.5 & input$plot_click$x<=113.5)
          {
            cat(SortBikeAcc$LAName[(input$plot_click$x)+113.5])
          }
          else
          {
            cat("Click on a point to see the name of the local authority")
          }
        }
      }
      else
      {
        cat("Click on a point to see the name of the local authority")
      }
    }
    
    else
    {
      if (!is.null(input$plot_click$x) & !is.null(input$plot_click$y))
      {
        if (input$plot_click$x>=0 & input$plot_click$x<=0.0002 & input$plot_click$y>=0 & input$plot_click$y<=0.1)
        {
          cat(unique(SortBikeAcc$LAName[SortBikeAcc$RatioAcc>=input$plot_click$x-0.00005/30 & SortBikeAcc$RatioAcc<=input$plot_click$x+0.00005/30 
                    & SortBikeAcc$RatioBikeSince2006>=input$plot_click$y-0.02/10 & SortBikeAcc$RatioBikeSince2006<=input$plot_click$y+0.02/10]), sep=", ")
        }
        else
        {
          cat("Click on a point to see the name of the local authority")
        }
      }
      else
      {
        cat("Click on a point to see the name of the local authority")
      }
    }
  })
  
  output$plot_clickinfo <- renderPrint({ reac() })
  
  
  # Tab age range and location
  reac2 <- reactive({    
    num <- as.integer(input$sev)
    color <- c("lightblue", "lightcoral", "lightskyblue", "lightgreen")
    color <- color[num+1]
    
    if (input$LA!="England")
    {
      if (input$sev!=0)
      {
        hist(cyclists$accyr[(cyclists$Age>=input$slider[1]) & (cyclists$Age<=input$slider[2]) & (cyclists$LAName==input$LA) & (cyclists$AccSeverity==input$sev)], breaks=seq(1999,2012,l=15), xlab="Year", 
             ylab="Number of collisions", main="Collisions involving cyclists", col=color)
      }
      else
      {
        hist(cyclists$accyr[(cyclists$Age>=input$slider[1]) & (cyclists$Age<=input$slider[2]) & (cyclists$LAName==input$LA) & (!is.null(cyclists$AccSeverity))], breaks=seq(1999,2012,l=15), xlab="Year", 
             ylab="Number of collisions", main="Collisions involving cyclists", col=color)
      }
    }
    else
    {
      if (input$sev!=0)
      { 
        hist(cyclists$accyr[(cyclists$Age>=input$slider[1]) & (cyclists$Age<=input$slider[2]) & (!is.null(cyclists$LAName)) & (cyclists$AccSeverity==input$sev)], breaks=seq(1999,2012,l=15), xlab="Year", 
             ylab="Number of collisions", main="Collisions involving cyclists", col=color)
      }
      else
      {
        hist(cyclists$accyr[(cyclists$Age>=input$slider[1]) & (cyclists$Age<=input$slider[2]) & (!is.null(cyclists$LAName)) & (!is.null(cyclists$AccSeverity))], breaks=seq(1999,2012,l=15), xlab="Year", 
             ylab="Number of collisions", main="Collisions involving cyclists", col=color)
      }
    }
  })
  
  output$distPlot2 <- renderPlot({
   reac2()
  })
  
  reac3 <- reactive({
    num <- as.integer(input$sev)
    color <- c("lightblue", "lightcoral", "lightskyblue", "lightgreen")
    color <- color[num+1]
    
    if (input$LA!="England")
    {
      if (input$sev!=0)
      {
        hist(Accidents1Bike1CarAllages$accyr[(Accidents1Bike1CarAllages$Age>=input$slider[1]) & (Accidents1Bike1CarAllages$Age<=input$slider[2]) & (Accidents1Bike1CarAllages$LAName==input$LA) & (Accidents1Bike1CarAllages$AccSeverity==input$sev)], 
             breaks=seq(1999,2012,l=15), xlab="Year", ylab="Number of collisions", main="Collisions involving one bike and one car", col=color)
      }
      else
      {
        hist(Accidents1Bike1CarAllages$accyr[(Accidents1Bike1CarAllages$Age>=input$slider[1]) & (Accidents1Bike1CarAllages$Age<=input$slider[2]) & (Accidents1Bike1CarAllages$LAName==input$LA) & (!is.null(Accidents1Bike1CarAllages$AccSeverity))], 
             breaks=seq(1999,2012,l=15), xlab="Year", ylab="Number of collisions", main="Collisions involving one bike and one car", col=color)
      }
    }
    else
    {
      if (input$sev!=0)
      {
        hist(Accidents1Bike1CarAllages$accyr[(Accidents1Bike1CarAllages$Age>=input$slider[1]) & (Accidents1Bike1CarAllages$Age<=input$slider[2])  & (!is.null(Accidents1Bike1CarAllages$LAName)) & (Accidents1Bike1CarAllages$AccSeverity==input$sev)], 
             breaks=seq(1999,2012,l=15), xlab="Year", ylab="Number of collisions", main="Collisions involving one bike and one car", col=color)
      }
      else
      {
        hist(Accidents1Bike1CarAllages$accyr[(Accidents1Bike1CarAllages$Age>=input$slider[1]) & (Accidents1Bike1CarAllages$Age<=input$slider[2])  & (!is.null(Accidents1Bike1CarAllages$LAName)) & (!is.null(Accidents1Bike1CarAllages$AccSeverity))], 
             breaks=seq(1999,2012,l=15), xlab="Year", ylab="Number of collisions", main="Collisions involving one bike and one car", col=color)
      }
    }
  })
  
  output$distPlot3 <- renderPlot({
    reac3()
  })
  
  
  # Tab kinds of accidents
  reac4 <- reactive({
    min<- input$sliderAge[1]
    max <- input$sliderAge[2]
    
    if(input$LAScenar!="England")
    {
      pareto <- c(length(LeavingLeftPrivate$urn[LeavingLeftPrivate$LAName==input$LAScenar & LeavingLeftPrivate$accyr<2006 & LeavingLeftPrivate$Age>=min & LeavingLeftPrivate$Age<=max])[1], 
                  length(EnteringRightPrivate$urn[EnteringRightPrivate$LAName==input$LAScenar & EnteringRightPrivate$accyr<2006 & EnteringRightPrivate$Age>=min & EnteringRightPrivate$Age<=max])[1], 
                  length(EnteringLeftCarPrivate$urn[EnteringLeftCarPrivate$LAName==input$LAScenar & EnteringLeftCarPrivate$accyr<2006 & EnteringLeftCarPrivate$Age>=min & EnteringLeftCarPrivate$Age<=max])[1], 
                  length(LeavingRightCarPrivate$urn[LeavingRightCarPrivate$LAName==input$LAScenar & LeavingRightCarPrivate$accyr<2006 & LeavingRightCarPrivate$Age>=min & LeavingRightCarPrivate$Age<=max])[1],
                  length(EnteringRightCarPrivate$urn[EnteringRightCarPrivate$LAName==input$LAScenar & EnteringRightCarPrivate$accyr<2006 & EnteringRightCarPrivate$Age>=min & EnteringRightCarPrivate$Age<=max])[1], 
                  length(LeavingLeftCarPrivate$urn[LeavingLeftCarPrivate$LAName==input$LAScenar & LeavingLeftCarPrivate$accyr<2006 & LeavingLeftCarPrivate$Age>=min & LeavingLeftCarPrivate$Age<=max])[1], 
                  length(CarLeavingRoundabout$urn[CarLeavingRoundabout$LAName==input$LAScenar & CarLeavingRoundabout$accyr<2006 & CarLeavingRoundabout$Age>=min & CarLeavingRoundabout$Age<=max])[1], 
                  length(CarEnteringRoundabout$urn[CarEnteringRoundabout$LAName==input$LAScenar & CarEnteringRoundabout$accyr<2006 & CarEnteringRoundabout$Age>=min & CarEnteringRoundabout$Age<=max])[1],
                  length(Roundabout$urn[Roundabout$LAName==input$LAScenar & Roundabout$accyr<2006 & Roundabout$Age>=min & Roundabout$Age<=max])[1], 
                  length(EnteringRoundabout$urn[EnteringRoundabout$LAName==input$LAScenar & EnteringRoundabout$accyr<2006 & EnteringRoundabout$Age>=min & EnteringRoundabout$Age<=max])[1], 
                  length(LeavingRoundabout$urn[LeavingRoundabout$LAName==input$LAScenar & LeavingRoundabout$accyr<2006 & LeavingRoundabout$Age>=min & LeavingRoundabout$Age<=max])[1], 
                  length(CarEnteringBikeLeavingRoundabout$urn[CarEnteringBikeLeavingRoundabout$LAName==input$LAScenar & CarEnteringBikeLeavingRoundabout$accyr<2006 & CarEnteringBikeLeavingRoundabout$Age>=min & CarEnteringBikeLeavingRoundabout$Age<=max])[1], 
                  length(BikeEnteringCarLeavingRoundabout$urn[BikeEnteringCarLeavingRoundabout$LAName==input$LAScenar & BikeEnteringCarLeavingRoundabout$accyr<2006 & BikeEnteringCarLeavingRoundabout$Age>=min & BikeEnteringCarLeavingRoundabout$Age<=max])[1], 
                  length(ChangingLane$urn[ChangingLane$LAName==input$LAScenar & ChangingLane$accyr<2006 & ChangingLane$Age>=min & ChangingLane$Age<=max])[1], 
                  length(ChangingLaneJunction$urn[ChangingLaneJunction$LAName==input$LAScenar & ChangingLaneJunction$accyr<2006 & ChangingLaneJunction$Age>=min & ChangingLaneJunction$Age<=max])[1], 
                  length(ChangingLaneCar$urn[ChangingLaneCar$LAName==input$LAScenar & ChangingLaneCar$accyr<2006 & ChangingLaneCar$Age>=min & ChangingLaneCar$Age<=max])[1], 
                  length(ChangingLaneJunctionCar$urn[ChangingLaneJunctionCar$LAName==input$LAScenar & ChangingLaneJunctionCar$accyr<2006 & ChangingLaneJunctionCar$Age>=min & ChangingLaneJunctionCar$Age<=max])[1], 
                  length(GoingAhead$urn[GoingAhead$LAName==input$LAScenar & GoingAhead$accyr<2006 & GoingAhead$Age>=min & GoingAhead$Age<=max])[1], 
                  length(GoingAheadT$urn[GoingAheadT$LAName==input$LAScenar & GoingAheadT$accyr<2006 & GoingAheadT$Age>=min & GoingAheadT$Age<=max])[1], 
                  length(GoingAheadCrossroads$urn[GoingAheadCrossroads$LAName==input$LAScenar & GoingAheadCrossroads$accyr<2006 & GoingAheadCrossroads$Age>=min & GoingAheadCrossroads$Age<=max])[1], 
                  length(GoingAheadPrivate$urn[GoingAheadPrivate$LAName==input$LAScenar & GoingAheadPrivate$accyr<2006 & GoingAheadPrivate$Age>=min & GoingAheadPrivate$Age<=max])[1],
                  length(GoingAheadOtherJunction$urn[GoingAheadOtherJunction$LAName==input$LAScenar & GoingAheadOtherJunction$accyr<2006 & GoingAheadOtherJunction$Age>=min & GoingAheadOtherJunction$Age<=max])[1], 
                  length(LeavingLeftTCar$urn[LeavingLeftTCar$LAName==input$LAScenar & LeavingLeftTCar$accyr<2006 & LeavingLeftTCar$Age>=min & LeavingLeftTCar$Age<=max])[1], 
                  length(ReversingCar$urn[ReversingCar$LAName==input$LAScenar & ReversingCar$accyr<2006 & ReversingCar$Age>=min & ReversingCar$Age<=max])[1], 
                  length(Footway$urn[Footway$LAName==input$LAScenar & Footway$accyr<2006 & Footway$Age>=min & Footway$Age<=max])[1],
                  length(LeavingLeftT$urn[LeavingLeftT$LAName==input$LAScenar & LeavingLeftT$accyr<2006 & LeavingLeftT$Age>=min & LeavingLeftT$Age<=max])[1], 
                  length(EnteringRightT$urn[EnteringRightT$LAName==input$LAScenar & EnteringRightT$accyr<2006 & EnteringRightT$Age>=min & EnteringRightT$Age<=max])[1], 
                  length(LeavingRightT$urn[LeavingRightT$LAName==input$LAScenar & LeavingRightT$accyr<2006 & LeavingRightT$Age>=min & LeavingRightT$Age<=max])[1], 
                  length(EnteringLeftT$urn[EnteringLeftT$LAName==input$LAScenar & EnteringLeftT$accyr<2006 & EnteringLeftT$Age>=min & EnteringLeftT$Age<=max])[1], 
                  length(LeavingLeft$urn[LeavingLeft$LAName==input$LAScenar & LeavingLeft$accyr<2006 & LeavingLeft$Age>=min & LeavingLeft$Age<=max])[1], 
                  length(EnteringLeft$urn[EnteringLeft$LAName==input$LAScenar & EnteringLeft$accyr<2006 & EnteringLeft$Age>=min & EnteringLeft$Age<=max])[1], 
                  length(Cycleway$urn[Cycleway$LAName==input$LAScenar & Cycleway$accyr<2006 & Cycleway$Age>=min & Cycleway$Age<=max])[1], 
                  length(CycleLane$urn[CycleLane$LAName==input$LAScenar & CycleLane$accyr<2006 & CycleLane$Age>=min & CycleLane$Age<=max])[1], 
                  length(EnteringRight$urn[EnteringRight$LAName==input$LAScenar & EnteringRight$accyr<2006 & EnteringRight$Age>=min & EnteringRight$Age<=max])[1], 
                  length(LeavingRight$urn[LeavingRight$LAName==input$LAScenar & LeavingRight$accyr<2006 & LeavingRight$Age>=min & LeavingRight$Age<=max])[1], 
                  length(DoorOpen$urn[DoorOpen$LAName==input$LAScenar & DoorOpen$accyr<2006 & DoorOpen$Age>=min & DoorOpen$Age<=max])[1], 
                  length(ParkedCar$urn[ParkedCar$LAName==input$LAScenar & ParkedCar$accyr<2006 & ParkedCar$Age>=min & ParkedCar$Age<=max])[1], 
                  length(StoppedCar$urn[StoppedCar$LAName==input$LAScenar & StoppedCar$accyr<2006 & StoppedCar$Age>=min & StoppedCar$Age<=max])[1], 
                  length(LeavingLeftCar$urn[LeavingLeftCar$LAName==input$LAScenar & LeavingLeftCar$accyr<2006 & LeavingLeftCar$Age>=min & LeavingLeftCar$Age<=max])[1], 
                  length(EnteringRightCar$urn[EnteringRightCar$LAName==input$LAScenar & EnteringRightCar$accyr<2006 & EnteringRightCar$Age>=min & EnteringRightCar$Age<=max])[1], 
                  length(BikeCarEnteringRoundabout$urn[BikeCarEnteringRoundabout$LAName==input$LAScenar & BikeCarEnteringRoundabout$accyr<2006 & BikeCarEnteringRoundabout$Age>=min & BikeCarEnteringRoundabout$Age<=max])[1],
                  length(BikeCarLeavingRoundabout$urn[BikeCarLeavingRoundabout$LAName==input$LAScenar & BikeCarLeavingRoundabout$accyr<2006 & BikeCarLeavingRoundabout$Age>=min & BikeCarLeavingRoundabout$Age<=max])[1],
                  length(LeavingRightCar$urn[LeavingRightCar$LAName==input$LAScenar & LeavingRightCar$accyr<2006 & LeavingRightCar$Age>=min & LeavingRightCar$Age<=max])[1], 
                  length(EnteringLeftCar$urn[EnteringLeftCar$LAName==input$LAScenar & EnteringLeftCar$accyr<2006 & EnteringLeftCar$Age>=min & EnteringLeftCar$Age<=max])[1], 
                  length(EnterCarriageway$urn[EnterCarriageway$LAName==input$LAScenar & EnterCarriageway$accyr<2006 & EnterCarriageway$Age>=min & EnterCarriageway$Age<=max])[1], 
                  length(EnteringLeftTCar$urn[EnteringLeftTCar$LAName==input$LAScenar & EnteringLeftTCar$accyr<2006 & EnteringLeftTCar$Age>=min & EnteringLeftTCar$Age<=max])[1], 
                  length(LeavingRightTCar$urn[LeavingRightTCar$LAName==input$LAScenar & LeavingRightTCar$accyr<2006 & LeavingRightTCar$Age>=min & LeavingRightTCar$Age<=max])[1], 
                  length(EnteringRightTCar$urn[EnteringRightTCar$LAName==input$LAScenar & EnteringRightTCar$accyr<2006 & EnteringRightTCar$Age>=min & EnteringRightTCar$Age<=max])[1], 
                  length(EnteringLeftPrivate$urn[EnteringLeftPrivate$LAName==input$LAScenar & EnteringLeftPrivate$accyr<2006 & EnteringLeftPrivate$Age>=min & EnteringLeftPrivate$Age<=max])[1], 
                  length(LeavingRightPrivate$urn[LeavingRightPrivate$LAName==input$LAScenar & LeavingRightPrivate$accyr<2006 & LeavingRightPrivate$Age>=min & LeavingRightPrivate$Age<=max])[1], 
                  length(Overtaking$urn[Overtaking$LAName==input$LAScenar & Overtaking$accyr<2006 & Overtaking$Age>=min & Overtaking$Age<=max])[1], 
                  length(OvertakingCar$urn[OvertakingCar$LAName==input$LAScenar & OvertakingCar$accyr<2006 & OvertakingCar$Age>=min & OvertakingCar$Age<=max])[1],
                  length(OvertakingT$urn[OvertakingT$LAName==input$LAScenar & OvertakingT$accyr<2006 & OvertakingT$Age>=min & OvertakingT$Age<=max])[1], 
                  length(OvertakingTCar$urn[OvertakingTCar$LAName==input$LAScenar & OvertakingTCar$accyr<2006 & OvertakingTCar$Age>=min & OvertakingTCar$Age<=max])[1], 
                  length(OvertakingPrivate$urn[OvertakingPrivate$LAName==input$LAScenar & OvertakingPrivate$accyr<2006 & OvertakingPrivate$Age>=min & OvertakingPrivate$Age<=max])[1], 
                  length(OvertakingPrivateCar$urn[OvertakingPrivateCar$LAName==input$LAScenar & OvertakingPrivateCar$accyr<2006 & OvertakingPrivateCar$Age>=min & OvertakingPrivateCar$Age<=max])[1], 
                  length(OvertakingCrossroads$urn[OvertakingCrossroads$LAName==input$LAScenar & OvertakingCrossroads$accyr<2006 & OvertakingCrossroads$Age>=min & OvertakingCrossroads$Age<=max])[1],
                  length(OvertakingCrossroadsCar$urn[OvertakingCrossroadsCar$LAName==input$LAScenar & OvertakingCrossroadsCar$accyr<2006 & OvertakingCrossroadsCar$Age>=min & OvertakingCrossroadsCar$Age<=max])[1])
      
      pareto <- as.data.frame(pareto)
      
      v1 <- c("LeavingLeftPrivate", "EnteringRightPrivate", "EnteringLeftCarPrivate", "LeavingRightCarPrivate",
              "EnteringRightCarPrivate", "LeavingLeftCarPrivate", "CarLeavingRoundabout", "CarEnteringRoundabout",
              "Roundabout", "EnteringRoundabout", "LeavingRoundabout", "CarEnteringBikeLeavingRoundabout", 
              "BikeEnteringCarLeavingRoundabout", "ChangingLane", "ChangingLaneJunction", "ChangingLaneCar", 
              "ChangingLaneJunctionCar", "GoingAhead", "GoingAheadT", "GoingAheadCrossroads", "GoingAheadPrivate",
              "GoingAheadOtherJunction", "LeavingLeftTCar", "ReversingCar", "Footway",
              "LeavingLeftT", "EnteringRightT", "LeavingRightT", "EnteringLeftT", "LeavingLeft", 
              "EnteringLeft", "Cycleway", "CycleLane", "EnteringRight", "LeavingRight", "DoorOpen", 
              "ParkedCar", "StoppedCar", "LeavingLeftCar", "EnteringRightCar", "BikeCarEnteringRoundabout",
              "BikeCarLeavingRoundabout",
              "LeavingRightCar", "EnteringLeftCar", "EnterCarriageway", "EnteringLeftTCar", "LeavingRightTCar", 
              "EnteringRightTCar", "EnteringLeftPrivate", "LeavingRightPrivate", "Overtaking", "OvertakingCar",
              "OvertakingT", "OvertakingTCar", "OvertakingPrivate", "OvertakingPrivateCar", "OvertakingCrossroads",
              "OvertakingCrossroadsCar")
      
      pareto <- cbind(v1, pareto)
      
      v2 <- c(length(LeavingLeftPrivate$urn[LeavingLeftPrivate$LAName==input$LAScenar & LeavingLeftPrivate$accyr>2005 & LeavingLeftPrivate$Age>=min & LeavingLeftPrivate$Age<=max])[1], 
              length(EnteringRightPrivate$urn[EnteringRightPrivate$LAName==input$LAScenar & EnteringRightPrivate$accyr>2005 & EnteringRightPrivate$Age>=min & EnteringRightPrivate$Age<=max])[1], 
              length(EnteringLeftCarPrivate$urn[EnteringLeftCarPrivate$LAName==input$LAScenar & EnteringLeftCarPrivate$accyr>2005 & EnteringLeftCarPrivate$Age>=min & EnteringLeftCarPrivate$Age<=max])[1], 
              length(LeavingRightCarPrivate$urn[LeavingRightCarPrivate$LAName==input$LAScenar & LeavingRightCarPrivate$accyr>2005 & LeavingRightCarPrivate$Age>=min & LeavingRightCarPrivate$Age<=max])[1],
              length(EnteringRightCarPrivate$urn[EnteringRightCarPrivate$LAName==input$LAScenar & EnteringRightCarPrivate$accyr>2005 & EnteringRightCarPrivate$Age>=min & EnteringRightCarPrivate$Age<=max])[1], 
              length(LeavingLeftCarPrivate$urn[LeavingLeftCarPrivate$LAName==input$LAScenar & LeavingLeftCarPrivate$accyr>2005 & LeavingLeftCarPrivate$Age>=min & LeavingLeftCarPrivate$Age<=max])[1], 
              length(CarLeavingRoundabout$urn[CarLeavingRoundabout$LAName==input$LAScenar & CarLeavingRoundabout$accyr>2005 & CarLeavingRoundabout$Age>=min & CarLeavingRoundabout$Age<=max])[1], 
              length(CarEnteringRoundabout$urn[CarEnteringRoundabout$LAName==input$LAScenar & CarEnteringRoundabout$accyr>2005 & CarEnteringRoundabout$Age>=min & CarEnteringRoundabout$Age<=max])[1],
              length(Roundabout$urn[Roundabout$LAName==input$LAScenar & Roundabout$accyr>2005 & Roundabout$Age>=min & Roundabout$Age<=max])[1], 
              length(EnteringRoundabout$urn[EnteringRoundabout$LAName==input$LAScenar & EnteringRoundabout$accyr>2005 & EnteringRoundabout$Age>=min & EnteringRoundabout$Age<=max])[1], 
              length(LeavingRoundabout$urn[LeavingRoundabout$LAName==input$LAScenar & LeavingRoundabout$accyr>2005 & LeavingRoundabout$Age>=min & LeavingRoundabout$Age<=max])[1], 
              length(CarEnteringBikeLeavingRoundabout$urn[CarEnteringBikeLeavingRoundabout$LAName==input$LAScenar & CarEnteringBikeLeavingRoundabout$accyr>2005 & CarEnteringBikeLeavingRoundabout$Age>=min & CarEnteringBikeLeavingRoundabout$Age<=max])[1], 
              length(BikeEnteringCarLeavingRoundabout$urn[BikeEnteringCarLeavingRoundabout$LAName==input$LAScenar & BikeEnteringCarLeavingRoundabout$accyr>2005 & BikeEnteringCarLeavingRoundabout$Age>=min & BikeEnteringCarLeavingRoundabout$Age<=max])[1], 
              length(ChangingLane$urn[ChangingLane$LAName==input$LAScenar & ChangingLane$accyr>2005 & ChangingLane$Age>=min & ChangingLane$Age<=max])[1], 
              length(ChangingLaneJunction$urn[ChangingLaneJunction$LAName==input$LAScenar & ChangingLaneJunction$accyr>2005 & ChangingLaneJunction$Age>=min & ChangingLaneJunction$Age<=max])[1], 
              length(ChangingLaneCar$urn[ChangingLaneCar$LAName==input$LAScenar & ChangingLaneCar$accyr>2005 & ChangingLaneCar$Age>=min & ChangingLaneCar$Age<=max])[1], 
              length(ChangingLaneJunctionCar$urn[ChangingLaneJunctionCar$LAName==input$LAScenar & ChangingLaneJunctionCar$accyr>2005 & ChangingLaneJunctionCar$Age>=min & ChangingLaneJunctionCar$Age<=max])[1], 
              length(GoingAhead$urn[GoingAhead$LAName==input$LAScenar & GoingAhead$accyr>2005 & GoingAhead$Age>=min & GoingAhead$Age<=max])[1], 
              length(GoingAheadT$urn[GoingAheadT$LAName==input$LAScenar & GoingAheadT$accyr>2005 & GoingAheadT$Age>=min & GoingAheadT$Age<=max])[1], 
              length(GoingAheadCrossroads$urn[GoingAheadCrossroads$LAName==input$LAScenar & GoingAheadCrossroads$accyr>2005 & GoingAheadCrossroads$Age>=min & GoingAheadCrossroads$Age<=max])[1], 
              length(GoingAheadPrivate$urn[GoingAheadPrivate$LAName==input$LAScenar & GoingAheadPrivate$accyr>2005 & GoingAheadPrivate$Age>=min & GoingAheadPrivate$Age<=max])[1],
              length(GoingAheadOtherJunction$urn[GoingAheadOtherJunction$LAName==input$LAScenar & GoingAheadOtherJunction$accyr>2005 & GoingAheadOtherJunction$Age>=min & GoingAheadOtherJunction$Age<=max])[1], 
              length(LeavingLeftTCar$urn[LeavingLeftTCar$LAName==input$LAScenar & LeavingLeftTCar$accyr>2005 & LeavingLeftTCar$Age>=min & LeavingLeftTCar$Age<=max])[1], 
              length(ReversingCar$urn[ReversingCar$LAName==input$LAScenar & ReversingCar$accyr>2005 & ReversingCar$Age>=min & ReversingCar$Age<=max])[1], 
              length(Footway$urn[Footway$LAName==input$LAScenar & Footway$accyr>2005 & Footway$Age>=min & Footway$Age<=max])[1],
              length(LeavingLeftT$urn[LeavingLeftT$LAName==input$LAScenar & LeavingLeftT$accyr>2005 & LeavingLeftT$Age>=min & LeavingLeftT$Age<=max])[1], 
              length(EnteringRightT$urn[EnteringRightT$LAName==input$LAScenar & EnteringRightT$accyr>2005 & EnteringRightT$Age>=min & EnteringRightT$Age<=max])[1], 
              length(LeavingRightT$urn[LeavingRightT$LAName==input$LAScenar & LeavingRightT$accyr>2005 & LeavingRightT$Age>=min & LeavingRightT$Age<=max])[1], 
              length(EnteringLeftT$urn[EnteringLeftT$LAName==input$LAScenar & EnteringLeftT$accyr>2005 & EnteringLeftT$Age>=min & EnteringLeftT$Age<=max])[1], 
              length(LeavingLeft$urn[LeavingLeft$LAName==input$LAScenar & LeavingLeft$accyr>2005 & LeavingLeft$Age>=min & LeavingLeft$Age<=max])[1], 
              length(EnteringLeft$urn[EnteringLeft$LAName==input$LAScenar & EnteringLeft$accyr>2005 & EnteringLeft$Age>=min & EnteringLeft$Age<=max])[1], 
              length(Cycleway$urn[Cycleway$LAName==input$LAScenar & Cycleway$accyr>2005 & Cycleway$Age>=min & Cycleway$Age<=max])[1], 
              length(CycleLane$urn[CycleLane$LAName==input$LAScenar & CycleLane$accyr>2005 & CycleLane$Age>=min & CycleLane$Age<=max])[1], 
              length(EnteringRight$urn[EnteringRight$LAName==input$LAScenar & EnteringRight$accyr>2005 & EnteringRight$Age>=min & EnteringRight$Age<=max])[1], 
              length(LeavingRight$urn[LeavingRight$LAName==input$LAScenar & LeavingRight$accyr>2005 & LeavingRight$Age>=min & LeavingRight$Age<=max])[1], 
              length(DoorOpen$urn[DoorOpen$LAName==input$LAScenar & DoorOpen$accyr>2005 & DoorOpen$Age>=min & DoorOpen$Age<=max])[1], 
              length(ParkedCar$urn[ParkedCar$LAName==input$LAScenar & ParkedCar$accyr>2005 & ParkedCar$Age>=min & ParkedCar$Age<=max])[1], 
              length(StoppedCar$urn[StoppedCar$LAName==input$LAScenar & StoppedCar$accyr>2005 & StoppedCar$Age>=min & StoppedCar$Age<=max])[1], 
              length(LeavingLeftCar$urn[LeavingLeftCar$LAName==input$LAScenar & LeavingLeftCar$accyr>2005 & LeavingLeftCar$Age>=min & LeavingLeftCar$Age<=max])[1], 
              length(EnteringRightCar$urn[EnteringRightCar$LAName==input$LAScenar & EnteringRightCar$accyr>2005 & EnteringRightCar$Age>=min & EnteringRightCar$Age<=max])[1], 
              length(BikeCarEnteringRoundabout$urn[BikeCarEnteringRoundabout$LAName==input$LAScenar & BikeCarEnteringRoundabout$accyr>2005 & BikeCarEnteringRoundabout$Age>=min & BikeCarEnteringRoundabout$Age<=max])[1],
              length(BikeCarLeavingRoundabout$urn[BikeCarLeavingRoundabout$LAName==input$LAScenar & BikeCarLeavingRoundabout$accyr>2005 & BikeCarLeavingRoundabout$Age>=min & BikeCarLeavingRoundabout$Age<=max])[1],
              length(LeavingRightCar$urn[LeavingRightCar$LAName==input$LAScenar & LeavingRightCar$accyr>2005 & LeavingRightCar$Age>=min & LeavingRightCar$Age<=max])[1], 
              length(EnteringLeftCar$urn[EnteringLeftCar$LAName==input$LAScenar & EnteringLeftCar$accyr>2005 & EnteringLeftCar$Age>=min & EnteringLeftCar$Age<=max])[1], 
              length(EnterCarriageway$urn[EnterCarriageway$LAName==input$LAScenar & EnterCarriageway$accyr>2005 & EnterCarriageway$Age>=min & EnterCarriageway$Age<=max])[1], 
              length(EnteringLeftTCar$urn[EnteringLeftTCar$LAName==input$LAScenar & EnteringLeftTCar$accyr>2005 & EnteringLeftTCar$Age>=min & EnteringLeftTCar$Age<=max])[1], 
              length(LeavingRightTCar$urn[LeavingRightTCar$LAName==input$LAScenar & LeavingRightTCar$accyr>2005 & LeavingRightTCar$Age>=min & LeavingRightTCar$Age<=max])[1], 
              length(EnteringRightTCar$urn[EnteringRightTCar$LAName==input$LAScenar & EnteringRightTCar$accyr>2005 & EnteringRightTCar$Age>=min & EnteringRightTCar$Age<=max])[1], 
              length(EnteringLeftPrivate$urn[EnteringLeftPrivate$LAName==input$LAScenar & EnteringLeftPrivate$accyr>2005 & EnteringLeftPrivate$Age>=min & EnteringLeftPrivate$Age<=max])[1], 
              length(LeavingRightPrivate$urn[LeavingRightPrivate$LAName==input$LAScenar & LeavingRightPrivate$accyr>2005 & LeavingRightPrivate$Age>=min & LeavingRightPrivate$Age<=max])[1], 
              length(Overtaking$urn[Overtaking$LAName==input$LAScenar & Overtaking$accyr>2005 & Overtaking$Age>=min & Overtaking$Age<=max])[1], 
              length(OvertakingCar$urn[OvertakingCar$LAName==input$LAScenar & OvertakingCar$accyr>2005 & OvertakingCar$Age>=min & OvertakingCar$Age<=max])[1],
              length(OvertakingT$urn[OvertakingT$LAName==input$LAScenar & OvertakingT$accyr>2005 & OvertakingT$Age>=min & OvertakingT$Age<=max])[1], 
              length(OvertakingTCar$urn[OvertakingTCar$LAName==input$LAScenar & OvertakingTCar$accyr>2005 & OvertakingTCar$Age>=min & OvertakingTCar$Age<=max])[1], 
              length(OvertakingPrivate$urn[OvertakingPrivate$LAName==input$LAScenar & OvertakingPrivate$accyr>2005 & OvertakingPrivate$Age>=min & OvertakingPrivate$Age<=max])[1], 
              length(OvertakingPrivateCar$urn[OvertakingPrivateCar$LAName==input$LAScenar & OvertakingPrivateCar$accyr>2005 & OvertakingPrivateCar$Age>=min & OvertakingPrivateCar$Age<=max])[1], 
              length(OvertakingCrossroads$urn[OvertakingCrossroads$LAName==input$LAScenar & OvertakingCrossroads$accyr>2005 & OvertakingCrossroads$Age>=min & OvertakingCrossroads$Age<=max])[1],
              length(OvertakingCrossroadsCar$urn[OvertakingCrossroadsCar$LAName==input$LAScenar & OvertakingCrossroadsCar$accyr>2005 & OvertakingCrossroadsCar$Age>=min & OvertakingCrossroadsCar$Age<=max])[1])
      
      pareto <- cbind(pareto,v2)
      colnames(pareto) <- c("Scenarios", "Before2005", "After2005")
      pareto <- pareto[order(pareto$Before2005, decreasing=T), ]
      
      list(paretoo = pareto$Scenarios, pareto = pareto, min = min, max = max)
    }
    else
    {
      pareto <- c(length(LeavingLeftPrivate$urn[LeavingLeftPrivate$accyr<2006 & LeavingLeftPrivate$Age>=min & LeavingLeftPrivate$Age<=max])[1], 
                  length(EnteringRightPrivate$urn[EnteringRightPrivate$accyr<2006 & EnteringRightPrivate$Age>=min & EnteringRightPrivate$Age<=max])[1], 
                  length(EnteringLeftCarPrivate$urn[EnteringLeftCarPrivate$accyr<2006 & EnteringLeftCarPrivate$Age>=min & EnteringLeftCarPrivate$Age<=max])[1], 
                  length(LeavingRightCarPrivate$urn[LeavingRightCarPrivate$accyr<2006 & LeavingRightCarPrivate$Age>=min & LeavingRightCarPrivate$Age<=max])[1],
                  length(EnteringRightCarPrivate$urn[EnteringRightCarPrivate$accyr<2006 & EnteringRightCarPrivate$Age>=min & EnteringRightCarPrivate$Age<=max])[1], 
                  length(LeavingLeftCarPrivate$urn[LeavingLeftCarPrivate$accyr<2006 & LeavingLeftCarPrivate$Age>=min & LeavingLeftCarPrivate$Age<=max])[1], 
                  length(CarLeavingRoundabout$urn[CarLeavingRoundabout$accyr<2006 & CarLeavingRoundabout$Age>=min & CarLeavingRoundabout$Age<=max])[1], 
                  length(CarEnteringRoundabout$urn[CarEnteringRoundabout$accyr<2006 & CarEnteringRoundabout$Age>=min & CarEnteringRoundabout$Age<=max])[1],
                  length(Roundabout$urn[Roundabout$accyr<2006 & Roundabout$Age>=min & Roundabout$Age<=max])[1], 
                  length(EnteringRoundabout$urn[EnteringRoundabout$accyr<2006 & EnteringRoundabout$Age>=min & EnteringRoundabout$Age<=max])[1], 
                  length(LeavingRoundabout$urn[LeavingRoundabout$accyr<2006 & LeavingRoundabout$Age>=min & LeavingRoundabout$Age<=max])[1], 
                  length(CarEnteringBikeLeavingRoundabout$urn[CarEnteringBikeLeavingRoundabout$accyr<2006 & CarEnteringBikeLeavingRoundabout$Age>=min & CarEnteringBikeLeavingRoundabout$Age<=max])[1], 
                  length(BikeEnteringCarLeavingRoundabout$urn[BikeEnteringCarLeavingRoundabout$accyr<2006 & BikeEnteringCarLeavingRoundabout$Age>=min & BikeEnteringCarLeavingRoundabout$Age<=max])[1], 
                  length(ChangingLane$urn[ChangingLane$accyr<2006 & ChangingLane$Age>=min & ChangingLane$Age<=max])[1], 
                  length(ChangingLaneJunction$urn[ChangingLaneJunction$accyr<2006 & ChangingLaneJunction$Age>=min & ChangingLaneJunction$Age<=max])[1], 
                  length(ChangingLaneCar$urn[ChangingLaneCar$accyr<2006 & ChangingLaneCar$Age>=min & ChangingLaneCar$Age<=max])[1], 
                  length(ChangingLaneJunctionCar$urn[ChangingLaneJunctionCar$accyr<2006 & ChangingLaneJunctionCar$Age>=min & ChangingLaneJunctionCar$Age<=max])[1], 
                  length(GoingAhead$urn[GoingAhead$accyr<2006 & GoingAhead$Age>=min & GoingAhead$Age<=max])[1], 
                  length(GoingAheadT$urn[GoingAheadT$accyr<2006 & GoingAheadT$Age>=min & GoingAheadT$Age<=max])[1], 
                  length(GoingAheadCrossroads$urn[GoingAheadCrossroads$accyr<2006 & GoingAheadCrossroads$Age>=min & GoingAheadCrossroads$Age<=max])[1], 
                  length(GoingAheadPrivate$urn[GoingAheadPrivate$accyr<2006 & GoingAheadPrivate$Age>=min & GoingAheadPrivate$Age<=max])[1],
                  length(GoingAheadOtherJunction$urn[GoingAheadOtherJunction$accyr<2006 & GoingAheadOtherJunction$Age>=min & GoingAheadOtherJunction$Age<=max])[1], 
                  length(LeavingLeftTCar$urn[LeavingLeftTCar$accyr<2006 & LeavingLeftTCar$Age>=min & LeavingLeftTCar$Age<=max])[1], 
                  length(ReversingCar$urn[ReversingCar$accyr<2006 & ReversingCar$Age>=min & ReversingCar$Age<=max])[1], 
                  length(Footway$urn[Footway$accyr<2006 & Footway$Age>=min & Footway$Age<=max])[1],
                  length(LeavingLeftT$urn[LeavingLeftT$accyr<2006 & LeavingLeftT$Age>=min & LeavingLeftT$Age<=max])[1], 
                  length(EnteringRightT$urn[EnteringRightT$accyr<2006 & EnteringRightT$Age>=min & EnteringRightT$Age<=max])[1], 
                  length(LeavingRightT$urn[LeavingRightT$accyr<2006 & LeavingRightT$Age>=min & LeavingRightT$Age<=max])[1], 
                  length(EnteringLeftT$urn[EnteringLeftT$accyr<2006 & EnteringLeftT$Age>=min & EnteringLeftT$Age<=max])[1], 
                  length(LeavingLeft$urn[LeavingLeft$accyr<2006 & LeavingLeft$Age>=min & LeavingLeft$Age<=max])[1], 
                  length(EnteringLeft$urn[EnteringLeft$accyr<2006 & EnteringLeft$Age>=min & EnteringLeft$Age<=max])[1], 
                  length(Cycleway$urn[Cycleway$accyr<2006 & Cycleway$Age>=min & Cycleway$Age<=max])[1], 
                  length(CycleLane$urn[CycleLane$accyr<2006 & CycleLane$Age>=min & CycleLane$Age<=max])[1], 
                  length(EnteringRight$urn[EnteringRight$accyr<2006 & EnteringRight$Age>=min & EnteringRight$Age<=max])[1], 
                  length(LeavingRight$urn[LeavingRight$accyr<2006 & LeavingRight$Age>=min & LeavingRight$Age<=max])[1], 
                  length(DoorOpen$urn[DoorOpen$accyr<2006 & DoorOpen$Age>=min & DoorOpen$Age<=max])[1], 
                  length(ParkedCar$urn[ParkedCar$accyr<2006 & ParkedCar$Age>=min & ParkedCar$Age<=max])[1], 
                  length(StoppedCar$urn[StoppedCar$accyr<2006 & StoppedCar$Age>=min & StoppedCar$Age<=max])[1], 
                  length(LeavingLeftCar$urn[LeavingLeftCar$accyr<2006 & LeavingLeftCar$Age>=min & LeavingLeftCar$Age<=max])[1], 
                  length(EnteringRightCar$urn[EnteringRightCar$accyr<2006 & EnteringRightCar$Age>=min & EnteringRightCar$Age<=max])[1], 
                  length(BikeCarEnteringRoundabout$urn[BikeCarEnteringRoundabout$accyr<2006 & BikeCarEnteringRoundabout$Age>=min & BikeCarEnteringRoundabout$Age<=max])[1],
                  length(BikeCarLeavingRoundabout$urn[BikeCarLeavingRoundabout$accyr<2006 & BikeCarLeavingRoundabout$Age>=min & BikeCarLeavingRoundabout$Age<=max])[1],
                  length(LeavingRightCar$urn[LeavingRightCar$accyr<2006 & LeavingRightCar$Age>=min & LeavingRightCar$Age<=max])[1], 
                  length(EnteringLeftCar$urn[EnteringLeftCar$accyr<2006 & EnteringLeftCar$Age>=min & EnteringLeftCar$Age<=max])[1], 
                  length(EnterCarriageway$urn[EnterCarriageway$accyr<2006 & EnterCarriageway$Age>=min & EnterCarriageway$Age<=max])[1], 
                  length(EnteringLeftTCar$urn[EnteringLeftTCar$accyr<2006 & EnteringLeftTCar$Age>=min & EnteringLeftTCar$Age<=max])[1], 
                  length(LeavingRightTCar$urn[LeavingRightTCar$accyr<2006 & LeavingRightTCar$Age>=min & LeavingRightTCar$Age<=max])[1], 
                  length(EnteringRightTCar$urn[EnteringRightTCar$accyr<2006 & EnteringRightTCar$Age>=min & EnteringRightTCar$Age<=max])[1], 
                  length(EnteringLeftPrivate$urn[EnteringLeftPrivate$accyr<2006 & EnteringLeftPrivate$Age>=min & EnteringLeftPrivate$Age<=max])[1], 
                  length(LeavingRightPrivate$urn[LeavingRightPrivate$accyr<2006 & LeavingRightPrivate$Age>=min & LeavingRightPrivate$Age<=max])[1], 
                  length(Overtaking$urn[Overtaking$accyr<2006 & Overtaking$Age>=min & Overtaking$Age<=max])[1], 
                  length(OvertakingCar$urn[OvertakingCar$accyr<2006 & OvertakingCar$Age>=min & OvertakingCar$Age<=max])[1],
                  length(OvertakingT$urn[OvertakingT$accyr<2006 & OvertakingT$Age>=min & OvertakingT$Age<=max])[1], 
                  length(OvertakingTCar$urn[OvertakingTCar$accyr<2006 & OvertakingTCar$Age>=min & OvertakingTCar$Age<=max])[1], 
                  length(OvertakingPrivate$urn[OvertakingPrivate$accyr<2006 & OvertakingPrivate$Age>=min & OvertakingPrivate$Age<=max])[1], 
                  length(OvertakingPrivateCar$urn[OvertakingPrivateCar$accyr<2006 & OvertakingPrivateCar$Age>=min & OvertakingPrivateCar$Age<=max])[1], 
                  length(OvertakingCrossroads$urn[OvertakingCrossroads$accyr<2006 & OvertakingCrossroads$Age>=min & OvertakingCrossroads$Age<=max])[1],
                  length(OvertakingCrossroadsCar$urn[OvertakingCrossroadsCar$accyr<2006 & OvertakingCrossroadsCar$Age>=min & OvertakingCrossroadsCar$Age<=max])[1])
      
      pareto <- as.data.frame(pareto)
      
      v1 <- c("LeavingLeftPrivate", "EnteringRightPrivate", "EnteringLeftCarPrivate", "LeavingRightCarPrivate",
              "EnteringRightCarPrivate", "LeavingLeftCarPrivate", "CarLeavingRoundabout", "CarEnteringRoundabout",
              "Roundabout", "EnteringRoundabout", "LeavingRoundabout", "CarEnteringBikeLeavingRoundabout", 
              "BikeEnteringCarLeavingRoundabout", "ChangingLane", "ChangingLaneJunction", "ChangingLaneCar", 
              "ChangingLaneJunctionCar", "GoingAhead", "GoingAheadT", "GoingAheadCrossroads", "GoingAheadPrivate",
              "GoingAheadOtherJunction", "LeavingLeftTCar", "ReversingCar", "Footway",
              "LeavingLeftT", "EnteringRightT", "LeavingRightT", "EnteringLeftT", "LeavingLeft", 
              "EnteringLeft", "Cycleway", "CycleLane", "EnteringRight", "LeavingRight", "DoorOpen", 
              "ParkedCar", "StoppedCar", "LeavingLeftCar", "EnteringRightCar", "BikeCarEnteringRoundabout",
              "BikeCarLeavingRoundabout",
              "LeavingRightCar", "EnteringLeftCar", "EnterCarriageway", "EnteringLeftTCar", "LeavingRightTCar", 
              "EnteringRightTCar", "EnteringLeftPrivate", "LeavingRightPrivate", "Overtaking", "OvertakingCar",
              "OvertakingT", "OvertakingTCar", "OvertakingPrivate", "OvertakingPrivateCar", "OvertakingCrossroads",
              "OvertakingCrossroadsCar")
      
      pareto <- cbind(v1, pareto)
      
      v2 <- c(length(LeavingLeftPrivate$urn[LeavingLeftPrivate$accyr>2005 & LeavingLeftPrivate$Age>=min & LeavingLeftPrivate$Age<=max])[1], 
              length(EnteringRightPrivate$urn[EnteringRightPrivate$accyr>2005 & EnteringRightPrivate$Age>=min & EnteringRightPrivate$Age<=max])[1], 
              length(EnteringLeftCarPrivate$urn[EnteringLeftCarPrivate$accyr>2005 & EnteringLeftCarPrivate$Age>=min & EnteringLeftCarPrivate$Age<=max])[1], 
              length(LeavingRightCarPrivate$urn[LeavingRightCarPrivate$accyr>2005 & LeavingRightCarPrivate$Age>=min & LeavingRightCarPrivate$Age<=max])[1],
              length(EnteringRightCarPrivate$urn[EnteringRightCarPrivate$accyr>2005 & EnteringRightCarPrivate$Age>=min & EnteringRightCarPrivate$Age<=max])[1], 
              length(LeavingLeftCarPrivate$urn[LeavingLeftCarPrivate$accyr>2005 & LeavingLeftCarPrivate$Age>=min & LeavingLeftCarPrivate$Age<=max])[1], 
              length(CarLeavingRoundabout$urn[CarLeavingRoundabout$accyr>2005 & CarLeavingRoundabout$Age>=min & CarLeavingRoundabout$Age<=max])[1], 
              length(CarEnteringRoundabout$urn[CarEnteringRoundabout$accyr>2005 & CarEnteringRoundabout$Age>=min & CarEnteringRoundabout$Age<=max])[1],
              length(Roundabout$urn[Roundabout$accyr>2005 & Roundabout$Age>=min & Roundabout$Age<=max])[1], 
              length(EnteringRoundabout$urn[EnteringRoundabout$accyr>2005 & EnteringRoundabout$Age>=min & EnteringRoundabout$Age<=max])[1], 
              length(LeavingRoundabout$urn[LeavingRoundabout$accyr>2005 & LeavingRoundabout$Age>=min & LeavingRoundabout$Age<=max])[1], 
              length(CarEnteringBikeLeavingRoundabout$urn[CarEnteringBikeLeavingRoundabout$accyr>2005 & CarEnteringBikeLeavingRoundabout$Age>=min & CarEnteringBikeLeavingRoundabout$Age<=max])[1], 
              length(BikeEnteringCarLeavingRoundabout$urn[BikeEnteringCarLeavingRoundabout$accyr>2005 & BikeEnteringCarLeavingRoundabout$Age>=min & BikeEnteringCarLeavingRoundabout$Age<=max])[1], 
              length(ChangingLane$urn[ChangingLane$accyr>2005 & ChangingLane$Age>=min & ChangingLane$Age<=max])[1], 
              length(ChangingLaneJunction$urn[ChangingLaneJunction$accyr>2005 & ChangingLaneJunction$Age>=min & ChangingLaneJunction$Age<=max])[1], 
              length(ChangingLaneCar$urn[ChangingLaneCar$accyr>2005 & ChangingLaneCar$Age>=min & ChangingLaneCar$Age<=max])[1], 
              length(ChangingLaneJunctionCar$urn[ChangingLaneJunctionCar$accyr>2005 & ChangingLaneJunctionCar$Age>=min & ChangingLaneJunctionCar$Age<=max])[1], 
              length(GoingAhead$urn[GoingAhead$accyr>2005 & GoingAhead$Age>=min & GoingAhead$Age<=max])[1], 
              length(GoingAheadT$urn[GoingAheadT$accyr>2005 & GoingAheadT$Age>=min & GoingAheadT$Age<=max])[1], 
              length(GoingAheadCrossroads$urn[GoingAheadCrossroads$accyr>2005 & GoingAheadCrossroads$Age>=min & GoingAheadCrossroads$Age<=max])[1], 
              length(GoingAheadPrivate$urn[GoingAheadPrivate$accyr>2005 & GoingAheadPrivate$Age>=min & GoingAheadPrivate$Age<=max])[1],
              length(GoingAheadOtherJunction$urn[GoingAheadOtherJunction$accyr>2005 & GoingAheadOtherJunction$Age>=min & GoingAheadOtherJunction$Age<=max])[1], 
              length(LeavingLeftTCar$urn[LeavingLeftTCar$accyr>2005 & LeavingLeftTCar$Age>=min & LeavingLeftTCar$Age<=max])[1], 
              length(ReversingCar$urn[ReversingCar$accyr>2005 & ReversingCar$Age>=min & ReversingCar$Age<=max])[1], 
              length(Footway$urn[Footway$accyr>2005 & Footway$Age>=min & Footway$Age<=max])[1],
              length(LeavingLeftT$urn[LeavingLeftT$accyr>2005 & LeavingLeftT$Age>=min & LeavingLeftT$Age<=max])[1], 
              length(EnteringRightT$urn[EnteringRightT$accyr>2005 & EnteringRightT$Age>=min & EnteringRightT$Age<=max])[1], 
              length(LeavingRightT$urn[LeavingRightT$accyr>2005 & LeavingRightT$Age>=min & LeavingRightT$Age<=max])[1], 
              length(EnteringLeftT$urn[EnteringLeftT$accyr>2005 & EnteringLeftT$Age>=min & EnteringLeftT$Age<=max])[1], 
              length(LeavingLeft$urn[LeavingLeft$accyr>2005 & LeavingLeft$Age>=min & LeavingLeft$Age<=max])[1], 
              length(EnteringLeft$urn[EnteringLeft$accyr>2005 & EnteringLeft$Age>=min & EnteringLeft$Age<=max])[1], 
              length(Cycleway$urn[Cycleway$accyr>2005 & Cycleway$Age>=min & Cycleway$Age<=max])[1], 
              length(CycleLane$urn[CycleLane$accyr>2005 & CycleLane$Age>=min & CycleLane$Age<=max])[1], 
              length(EnteringRight$urn[EnteringRight$accyr>2005 & EnteringRight$Age>=min & EnteringRight$Age<=max])[1], 
              length(LeavingRight$urn[LeavingRight$accyr>2005 & LeavingRight$Age>=min & LeavingRight$Age<=max])[1], 
              length(DoorOpen$urn[DoorOpen$accyr>2005 & DoorOpen$Age>=min & DoorOpen$Age<=max])[1], 
              length(ParkedCar$urn[ParkedCar$accyr>2005 & ParkedCar$Age>=min & ParkedCar$Age<=max])[1], 
              length(StoppedCar$urn[StoppedCar$accyr>2005 & StoppedCar$Age>=min & StoppedCar$Age<=max])[1], 
              length(LeavingLeftCar$urn[LeavingLeftCar$accyr>2005 & LeavingLeftCar$Age>=min & LeavingLeftCar$Age<=max])[1], 
              length(EnteringRightCar$urn[EnteringRightCar$accyr>2005 & EnteringRightCar$Age>=min & EnteringRightCar$Age<=max])[1], 
              length(BikeCarEnteringRoundabout$urn[BikeCarEnteringRoundabout$accyr>2005 & BikeCarEnteringRoundabout$Age>=min & BikeCarEnteringRoundabout$Age<=max])[1],
              length(BikeCarLeavingRoundabout$urn[BikeCarLeavingRoundabout$accyr>2005 & BikeCarLeavingRoundabout$Age>=min & BikeCarLeavingRoundabout$Age<=max])[1],
              length(LeavingRightCar$urn[LeavingRightCar$accyr>2005 & LeavingRightCar$Age>=min & LeavingRightCar$Age<=max])[1], 
              length(EnteringLeftCar$urn[EnteringLeftCar$accyr>2005 & EnteringLeftCar$Age>=min & EnteringLeftCar$Age<=max])[1], 
              length(EnterCarriageway$urn[EnterCarriageway$accyr>2005 & EnterCarriageway$Age>=min & EnterCarriageway$Age<=max])[1], 
              length(EnteringLeftTCar$urn[EnteringLeftTCar$accyr>2005 & EnteringLeftTCar$Age>=min & EnteringLeftTCar$Age<=max])[1], 
              length(LeavingRightTCar$urn[LeavingRightTCar$accyr>2005 & LeavingRightTCar$Age>=min & LeavingRightTCar$Age<=max])[1], 
              length(EnteringRightTCar$urn[EnteringRightTCar$accyr>2005 & EnteringRightTCar$Age>=min & EnteringRightTCar$Age<=max])[1], 
              length(EnteringLeftPrivate$urn[EnteringLeftPrivate$accyr>2005 & EnteringLeftPrivate$Age>=min & EnteringLeftPrivate$Age<=max])[1], 
              length(LeavingRightPrivate$urn[LeavingRightPrivate$accyr>2005 & LeavingRightPrivate$Age>=min & LeavingRightPrivate$Age<=max])[1], 
              length(Overtaking$urn[Overtaking$accyr>2005 & Overtaking$Age>=min & Overtaking$Age<=max])[1], 
              length(OvertakingCar$urn[OvertakingCar$accyr>2005 & OvertakingCar$Age>=min & OvertakingCar$Age<=max])[1],
              length(OvertakingT$urn[OvertakingT$accyr>2005 & OvertakingT$Age>=min & OvertakingT$Age<=max])[1], 
              length(OvertakingTCar$urn[OvertakingTCar$accyr>2005 & OvertakingTCar$Age>=min & OvertakingTCar$Age<=max])[1], 
              length(OvertakingPrivate$urn[OvertakingPrivate$accyr>2005 & OvertakingPrivate$Age>=min & OvertakingPrivate$Age<=max])[1], 
              length(OvertakingPrivateCar$urn[OvertakingPrivateCar$accyr>2005 & OvertakingPrivateCar$Age>=min & OvertakingPrivateCar$Age<=max])[1], 
              length(OvertakingCrossroads$urn[OvertakingCrossroads$accyr>2005 & OvertakingCrossroads$Age>=min & OvertakingCrossroads$Age<=max])[1],
              length(OvertakingCrossroadsCar$urn[OvertakingCrossroadsCar$accyr>2005 & OvertakingCrossroadsCar$Age>=min & OvertakingCrossroadsCar$Age<=max])[1])
      
      pareto <- cbind(pareto,v2)
      colnames(pareto) <- c("Scenarios", "Before2005", "After2005")
      pareto <- pareto[order(pareto$Before2005, decreasing=T), ]
    
      list(paretoo = pareto$Scenarios, pareto = pareto, min = min, max = max)    
    }
  })
  
  output$distPlot4 <- renderPlot({
    pareto <- reac4()$pareto
    min <- reac4()$min
    max <- reac4()$max
    
    vals <- as.matrix(pareto[, 2:3])
    rownames(vals) <- pareto[, 1]
    
    par(mar=c(13, 4, 4, 2))
    barplot(t(vals), beside = T, legend = T, las = 2, cex.names=0.8, col=c("red","blue"), ylab="Number of collisions", main=paste("Evolution of the number of collisions involving one", min, "to", max, "cyclist and one car between 1999 and 2012"))
  })
  
  
  reacDescript <- reactive({
    paretoo <- reac4()$paretoo
    
    if (!is.null(input$plot_click2$x))
    {
      if (input$plot_click2$x>=0 & input$plot_click2$x<= 174)
      {
        cat(description$Text[description$Scenario==paretoo[input$plot_click2$x/3+1]])
      }
      else
      {
        cat("Click on a bar to see the description of the scenario")
      } 
    }
    else
    {
      cat("Click on a bar to see the description of the scenario")
    }
  })
  
  
  output$plot_clickdescription <- renderPrint({ 
    reacDescript()
  })
  
  
  output$plot_clickinfo2 <- renderImage({    
    paretoo <- reac4()$paretoo
    return ( list (
      src = paste("images/", paretoo[input$plot_click2$x/3+1], ".png", sep = ""),
      filetype = "image/png",
      alt = paste("Click on a bar to see the scheme of the collision"),
      width = 225,
      height=225))
  }, deleteFile = FALSE)

  
  reacScenarios <- reactive({
    tot <- rbind(LeavingLeftPrivate, EnteringRightPrivate, EnteringLeftCarPrivate, LeavingRightCarPrivate,
                 EnteringRightCarPrivate, LeavingLeftCarPrivate, CarLeavingRoundabout, CarEnteringRoundabout,
                 Roundabout, EnteringRoundabout, LeavingRoundabout, CarEnteringBikeLeavingRoundabout, 
                 BikeEnteringCarLeavingRoundabout, ChangingLane, ChangingLaneJunction, ChangingLaneCar, 
                 ChangingLaneJunctionCar, GoingAhead, GoingAheadT, GoingAheadCrossroads, GoingAheadPrivate,
                 GoingAheadOtherJunction, LeavingLeftTCar, ReversingCar, Footway,
                 LeavingLeftT, EnteringRightT, LeavingRightT, EnteringLeftT, LeavingLeft, 
                 EnteringLeft, Cycleway, CycleLane, EnteringRight, LeavingRight, DoorOpen, 
                 ParkedCar, StoppedCar, LeavingLeftCar, EnteringRightCar, BikeCarEnteringRoundabout,
                 BikeCarLeavingRoundabout,
                 LeavingRightCar, EnteringLeftCar, EnterCarriageway, EnteringLeftTCar, LeavingRightTCar, 
                 EnteringRightTCar, EnteringLeftPrivate, LeavingRightPrivate, Overtaking, OvertakingCar,
                 OvertakingT, OvertakingTCar, OvertakingPrivate, OvertakingPrivateCar, OvertakingCrossroads,
                 OvertakingCrossroadsCar)
   
    if(input$LAScenar2!="England")
    {
      hist(tot$accyr[tot$Scenario==input$Scenario & tot$LAName==input$LAScenar2 & tot$Age>=input$sliderAge2[1] & tot$Age<=input$sliderAge2[2]], breaks=seq(1999,2012,l=15), xlab="Year", ylab="Number of collisions", main=paste("Evolution of", input$Scenario, "scenario over time"), col="royalBlue")
    }
    else
    {
      hist(tot$accyr[tot$Scenario==input$Scenario & !(is.null(tot$LAName)) & tot$Age>=input$sliderAge2[1] & tot$Age<=input$sliderAge2[2]], breaks=seq(1999,2012,l=15), xlab="Year", ylab="Number of collisions", main=paste("Evolution of", input$Scenario, "scenario over time"), col="royalBlue")
    }
    
  })
  
  output$distPlot5 <- renderPlot({
    reacScenarios()
  })
  
  
  reacDescript2 <- reactive({
    cat(description$Text[description$Scenario==input$Scenario])
  })
  
  
  output$plot_clickdescription2 <- renderPrint({ 
    reacDescript2()
  })
  
  output$image_scenario <- renderImage({ 
    return ( list (
      src = paste("images/", input$Scenario, ".png", sep = ""),
      filetype = "image/png",
      alt = paste("Image of the scenario"),
      width = 225,
      height=225))
  }, deleteFile = FALSE)
  
  
})
