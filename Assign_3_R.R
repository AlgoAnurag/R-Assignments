# Q1

size = 12
prob =1/6

P_X_less_9 = pbinom(9,size,prob)
P_X_less_6 = pbinom(6,size,prob)

P_7_to_9 = P_X_less_9 - P_X_less_6
P_7_to_9

# Q2
mean =72
sd = 15.2
score =84

prob = 1- pnorm(score, mean, sd)
prob*100

#Q3
P_X_0 = dpois(0,5)
P_X_0


P_Y_48_50 = ppois(50,50) - ppois(47,50)
P_Y_48_50

#Q4
N = 250 
m= 17
n=250-17

k=5
x=3

prob = dhyper(3,m=17,n=233,k=5)
prob

#Q5
n=31
p=0.447

x = 0:n

pmf = dbinom(x,n,p)
plot(x,pmf,type='h',lwd=2)

cdf = pbinom(x,n,p)
plot(x,cdf)

mean =n*p
varience = n*p*(1-p)
sd = sqrt(varience)
mean
varience
sd

























