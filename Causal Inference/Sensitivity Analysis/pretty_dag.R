# Helper function to make our DAGs a little nicer looking
# NOTE: Don't worry about how this function is written
pretty_dag <- function(dag) {
  nodes <- unique(dag$data$name)
  old_x <- unique(dag$data$x)
  old_y <- unique(dag$data$y)
  num_nodes <- length(nodes)
  num_ws <- sum(str_detect(nodes, "^W"))
  
  for(i in 1:num_nodes) {
    if (nodes[i] == "A") {
      new_y <- 0
      new_x <- 0
    } else if (str_detect(nodes[i], "^U_A")) {
      new_y <- 2
      new_x <- 0
    } else if (nodes[i] == "Y") {
      new_y <- 0
      new_x <- 2*(num_ws + 1)
    } else if (str_detect(nodes[i], "^U_Y")) {
      new_y <- 2
      new_x <- 2*(num_ws + 1)
    } else if (nodes[i] == "Z") {
      new_y <- 0
      new_x <- -1
    } else if (str_detect(nodes[i], "^U_Z")) {
      new_y <- 2
      new_x <- -1
    } else if (nodes[i] == "U") {
      new_y <- 2*(num_ws + 1)
      new_x <- num_ws + 1
    } else if (str_detect(nodes[i], "^W")) {
      w_num <- as.numeric(str_remove(nodes[i], "W"))
      if (is.na(w_num)) {
        new_y <- 2
        new_x <- 2
      } else {
        new_y <- 2*min(abs(0-w_num), abs(num_ws+1-w_num))
        new_x <- 2*w_num
      }
    } else if (str_detect(nodes[i], "^U_W")) {
      u_num <- as.numeric(str_remove(nodes[i], "U_W"))
      if (is.na(u_num)) {
        new_y <- 4
        new_x <- 1
      } else {
        new_y <- 2*min(abs(0-u_num), abs(num_ws+1-u_num)) + 2
        new_x <- 2*u_num
      }
    }
    
    dag$data <- dag$data %>%
      mutate(x = replace(x, x == old_x[i], new_x),
             y = replace(y, y == old_y[i], new_y),
             xend = replace(xend, xend == old_x[i], new_x),
             yend = replace(yend, yend == old_y[i], new_y),)
  }
  
  dag <- dag %>%
    mutate(color = ifelse(str_detect(name, "^[A|Y|Z]"), 
                          name, 
                          ifelse(str_detect(name, "^W"), 
                                 "W", 
                                 "U")),
           circular = TRUE)
  return(dag)
}