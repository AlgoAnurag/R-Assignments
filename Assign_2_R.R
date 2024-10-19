#Q1
coins= c( rep("gold",20), rep("silver",30), rep("bronze",50) )
print(coins)
set.seed(123)  # for same sample generations for different run
sample(coins,10,TRUE)       #false : cant picked again , true: coin can picked multiple times

#Q1(b)
outcomes=c("success","failure")
probability =c(0.9,0.1)
set.seed(123)
sample(outcomes,10,TRUE,probability)



#Q2 part(a)

bday_simulation = function(n, trials=10000){
  
  match = 0
  
  for(i in 1:trials){
    bday = sample(1:365,n,TRUE)
    
    if(length(unique(bday))<n){
      match = match+1
    }
  }
  
  return(match / trials)
  
}
set.seed(123)  # For reproducibility
bday_simulation(n = 23) 

#Q2 (b)

min_n = function(){
  for(n in 1:1000){
    prob = bday_simulation(n)
    
    if(prob>0.5){
      return(n)
    }
  }
}

set.seed(123)
min_n()



# Q3 

conditional_prob = function(P_A, P_B_given_A, P_B){
  
  P_A_given_B = (P_B_given_A * P_A) / P_B
  return(P_A_given_B)
  
}

P_cloudy =0.4
P_rain = 0.2
P_cloudy_given_rain = 0.85

# P(rain | cloudy)
P_rain_given_cloudy = conditional_prob(P_rain, P_cloudy_given_rain, P_cloudy)

print(P_rain_given_cloudy)


# Q4 ************************

data("iris")

head(iris)
str(iris)
range(iris$Sepal.Length)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)

quantiles= quantile(iris$Sepal.Length,probs=c(0.25,0.75))
quantiles

iqr_sepal_length = IQR(iris$Sepal.Length)
iqr_sepal_length

sd(iris$Sepal.Length)
var(iris$Sepal.Length)

summary(iris)

q=quantile(iris$Sepal.Length, c(0.25,0.75))
q







