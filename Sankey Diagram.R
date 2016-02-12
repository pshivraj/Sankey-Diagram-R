library(riverplot)
ret <- list(nodes = 
              data.frame(ID = c("A", "B", "C", "D", "E","F") , x = c(2,2, 1,2,2,2), 
                         labels = c("Nachhaltigkeit (3)", "Regulierung (3)", "  Homepage (105572)", "  Digitalisierung (8)","Toolbox (192)","Landing Page (6)"), 
                         stringsAsFactors = FALSE), 
            styles = list(A = list(col = "#1D4F73",
                                   lty = 0, textcol = "black"), 
                          B = list(col = "#00667E", textcol = "black"), 
                          C = list(col = "#F4F1A2", textcol = "black"),
                          D = list(col = "#008790", textcol = "black"),
                          E = list(col = "#00A7A2",lty=0, textcol = "black"),
                          F=list(col = "#7FC9A4",lty=0, textcol = "black")
                          
            ))                                                                                  
ret$edges <- data.frame(N1 = c("C"), N2 = 
                          c("D", "B", "A", "E","F"), 
                        Value = c(8,3,3,192,6), stringsAsFactors = F)
rownames(ret$nodes) <- ret$nodes$ID
class(ret) <- c(class(ret), "riverplot")

riverplot(ret, srt = 0)

#1D4F73
#00667E
#008790
#00A7A2
#7FC9A4
#F4F1A2