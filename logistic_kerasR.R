##############################################
devtools::install_github("rstudio/tensorflow")
library(tensorflow)
install_tensorflow()
hello <- tf$constant("Hello")
print(hello)
#####################################
devtools::install_github("rstudio/keras")
install.packages("keras")
keras::install_keras(tensorflow ='gpu')
library(keras)
library(dplyr)
library(caret)
library(reticulate)
##############################################
df <- read.csv("C:\\Users\\kamin\\Desktop\\IIMA\\SEM-3\\BA\\Project\\horizontal_stack_10.csv")
View(df)
df=df[,c(-1,-2)]
x<-df[,c(-3)]
View(x)
y<-df[,3]
View(y)
x1 <- array_reshape(x, c(nrow(x),102))
y1 <- array_reshape(y, c(nrow(x),1))

#Extract random sample of indices for test data
set.seed(42) #equivalent to python's random_state arg
test_inds = createDataPartition(y = 1:length(y), p = 0.2, list = F) 

# Split data into test/train using indices
X_test = x1[test_inds, ]; y_test = y1[test_inds] 
X_train = x1[-test_inds, ]; y_train = y1[-test_inds]

########
model_keras <- keras_model_sequential()
model_keras%>% 
  # Output layer
  layer_dense(
    units              = 1, 
    kernel_initializer = "uniform", 
    activation         = "sigmoid",
    name = 'contributions') %>% 
  
  compile(
    loss = "binary_crossentropy",
    optimizer = "adamax",
    metrics = "accuracy"
  )

history <- fit(
  object           = model_keras, 
  x                = as.matrix(X_train), 
  y                = y_train,
  batch_size       = 50, 
  epochs           = 35,
  validation_split = 0.30
)

summary(model_keras)
print(history)
#########################get weights#####################
wt<-model_keras$get_weights()
k <- model_keras$get_layer('contributions')
wr<-(k$get_weights()[1])
typeof(wr)
wr<-data.frame(wr)
#################Get weight by applying exp to###########################

logit2prob <- function(logit){
  odds <- exp(logit)
  prob <- odds / (1 + odds)
  return(prob)
}

weights<-logit2prob(wr)
weights
###########################################
write.csv(weights,"C:/Users/kamin/Desktop/IIMA/SEM-3/BA/Project/my_model/R_keras.csv")
