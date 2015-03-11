library (networkD3)
library (markdown)
library (igraph)
library (shiny)
library (shinythemes)
library (plyr)


server <- function(input, output) {
  
  # Use igraph to Read in Graphml data exported from SCI2
  network <- read.graph("weiman-ex-n.xml",format="graphml")
  
  #  Extract edges and associated data
  edges <- as.data.frame(
    list(
      get.edgelist(network,names=TRUE),
      weight = E(network)$weight),
    stringsAsFactors=FALSE)
  
  edges$weight<-10*edges$weight
  
  edges <- arrange(edges,X1,X2)
  edges$X1 <- edges$X1-1
  edges$X2 <- edges$X2-1
  names(edges) <- c("source","target","weight")
  
  
  # Extract nodes and associated data
  nodes <- as.data.frame(
    list(
      name = V(network)$label,
      group = as.numeric(factor(V(network)$startdate))),
    stringsAsFactors=FALSE)
  
  output$force <- renderForceNetwork({
    forceNetwork(Links = edges, Nodes = nodes, Source = "source",
                 Target = "target", Value = "weight", NodeID = "name",
                 Group = "group", height=800, width=600, opacity = 0.8)
  })
  
}

#### UI ####

ui <- shinyUI(fluidPage(theme = shinytheme("cosmo"),
  verticalLayout(
     fluidRow(
       column(12,
              includeMarkdown("ivmooc_week_7_dynamic_visualizations.md"))
     ),
    titlePanel("Carl Wieman Co-author Network"),
    mainPanel(
      forceNetworkOutput("force",width = "100%")
    )
  )
))

#### Run ####
shinyApp(ui = ui, server = server)