 #' BEAMA corporate colours
 #' New colours

     get_corporate_blue <- function(){
       return('#3a6f8f')
     }

     get_grayblue <- function(){
       return('#6d92a8')
     }

     get_all <- function(){
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

     get_header <- function(){
       return(
         c("#78A22F", get_pink()  ,"#6A737B", "#80A1B6")
       )
     }

     get_bsblue <- function(){
       return('#337AB7')
     }

     get_green <- function(){
       return('#649e35')
     }

     get_yellow <- function(){
       return('#ffcd34')
     }

     get_darkyellow <- function(){
       return('#dd7c1f')
     }

     get_blue <- function(){
       return('#30a4dc')
     }

     get_gray <- function(){
       return('#73808b')
     }

     get_limegreen <- function(){
       return('#a9a613')
     }

     get_pink <- function(){
       return('#b63e97')
     }

     get_lime <- function(){
       return('#d5c40a')
     }

     get_bar_colours <- function(){
       return(get_all())
     }

     get_line_colour <- function(){
       return( get_bsblue())
     }

     get_smooth_colour <- function(){
       return(get_pink())
     }

     get_plus_minus <- function(){
       return( c("#377EB8","#E41A1C") )
     }

     get_old<- function(id){

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

     get_stats <- function(){
       return(c("#2C7FB8", "#E34A33","#31A354", "#C51B8A"))
     }

     get_euris_blue <- function(){

       return('#004494')

     }

     get_euris_blue_light <- function(){

       return('#75a8e4')

     }



