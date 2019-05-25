 #' BEAMA corporate colours
 #' New colours

     get_corporate_blue <- corporate_blue <- function(){
       return('#3a6f8f')
     }

     get_grayblue <- grayblue <- function(){
       return('#6d92a8')
     }

     get_all <- all <- function(){
       return(
         c(
           get_corporate_blue(),
           get_limegreen(),
           get_pink(),
           get_blue(),
           get_darkyellow(),
           get_grayblue(),
           get_lime(),
           get_green(),
           get_gray()

         )
       )
     }

     get_header <- header <- function(){
       return(
         c("#78A22F", get_pink()  ,"#6A737B", "#80A1B6")
       )
     }

     get_bsblue <- bsblue <- function(){
       return('#337AB7')
     }

     get_green <- green <- function(){
       return('#649e35')
     }

     get_yellow <- yellow <- function(){
       return('#ffcd34')
     }

     get_darkyellow <- darkyellow <- function(){
       return('#dd7c1f')
     }

     get_blue <- blue <- function(){
       return('#30a4dc')
     }

     get_gray <- gray <- function(){
       return('#73808b')
     }

     get_limegreen <- limegreen <- function(){
       return('#a9a613')
     }

     get_pink <- pink <- function(){
       return('#b63e97')
     }

     get_lime <- lime <- function(){
       return('#d5c40a')
     }

     get_bar_colours <- bar_colours <- function(){
       return(get_all())
     }

     get_line_colour <- line_colour <- function(){
       return( get_bsblue())
     }

     get_smooth_colour <- smooth_colour <- function(){
       return(get_pink())
     }

     get_plus_minus<- plus_minus <- function(){
       return( c("#377EB8","#E41A1C") )
     }

     get_old <- old <- function(id){

       my_colours = data.frame(

         colour=c(
          "#3B6E8F",  "#6A737B",	"#DBC500",	"#33A3DC"
         ,"#ABE1FA",	 "#78A22F",	"#B63E97",	"#B8B308"
         , "#80A1B6", 	"#0072B2"
         ),

         name=c(
           "darkblue",    "gray" , "lightyellow" ,  "ligthblue",
           "brightblue",  "green", "pink",           "lightgray" ,
           "blue",         "ligthblue"
         ),
         stringsAsFactors = FALSE

       )

       if(id=='all'){
         return(my_colours)
       }

       my_colour <- dplyr::filter(my_colours,name==id)

       if(nrow(my_colour) >0 ){
          return(my_colour$colour )
       }else{
          return(NULL)
       }
     }

     get_stats <- stats <- function(){
       return(c("#2C7FB8", "#E34A33","#31A354", "#C51B8A"))
     }

     get_euris_blue <- euris_blue <- function(){

       return('#004494')

     }

     get_euris_blue_light <- euris_blue_light <- function(){

       return('#75a8e4')

     }


     get_lia_blue1 <-lia_blue1  <- function(){

       return(
         rgb(15,68,139, maxColorValue = 255)
       )
     }

     get_lia_blue2 <-lia_blue2  <- function(){

       return(
         rgb(14,67,138, maxColorValue = 255)
       )
     }

     get_lia_red <-lia_red  <- function(){

       return(
         rgb(208,0,66, maxColorValue = 255)
       )
     }

     get_lia_yellow1 <-lia_yellow1  <- function(){

       return(
         rgb(255,237,189, maxColorValue = 255)
       )
     }

     get_lia_yellow2 <-lia_yellow2  <- function(){

       return(
         rgb(253,202,140, maxColorValue = 255)
       )
     }

     get_lia_yellow3 <-lia_yellow3 <- function(){

       return(
         rgb(244,120,76, maxColorValue = 255)
       )
     }

     get_lia_all <- lia_all <- function(){

       return(
         c(
           get_lia_blue1(), get_lia_red(), get_lia_yellow3(),get_lia_yellow2(), get_lia_yellow1()
         )
       )

     }

     get_cesa_blue<- cesa_blue <- function(){

       return(
         rgb(0,61,128, maxColorValue = 255)
       )

     }

     get_cesa_yellow <- cesa_yellow <- function(){

       return(
         rgb(247,148,29, maxColorValue = 255)
       )

     }

     get_cesa_all <- cesa_all <- function(){

       return(
         c(
           get_cesa_blue(),  get_cesa_yellow()
         )
       )

     }

     col2hex <- function (cname){

             colMat <- grDevices::col2rgb(cname)
             rgb(
                     red   = colMat[1, ]/255,
                     green = colMat[2, ]/255,
                     blue  = colMat[3, ]/255
             )
     }
