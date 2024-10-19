C=c(5,10,15,20,25,30)
a=max(C)
b=min(C)
print(a)
print(b)

# Q2
print("enter a number")
n=as.integer(readline() )

if(n<0){
  print("error")
}else{
  print(factorial(n))}
 
#Q3
n=as.integer(readline())
fib=numeric(n)

fib[1]=0

if(is.na(n)>1){
  fib[2]=1
}

for(i in 3:n){
  fib[i] = fib[i-1] + fib[i-2]
}

print(fib)


#Q4 
x=c(1,2,3,4)
y=c(2,4,6,8)
plot(x,y)



