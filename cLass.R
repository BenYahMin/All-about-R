
#CALCULATING THE MEAN SSE (MSSE)
N=0
for(p in 1:500)
{

#Write an R program that generates 1000 variates of y
x1=rnorm(1000,2,0.8)
x2=rbeta(1000,1,0.6)
x3=rpois(1000,2)
x4=rchisq(1000,4)
x5=rt(1000,2)
x6=runif(1000,1,2)
e=rnorm(1000,0,0.7)

#bj=j*1.2+0.7, j=0,1,2,3,4,5,6    j=i-1

#y=b0+b1*x1+b2*x2+b3*x3+b4*x4+b5*x5+b6*x6+e

#TO GENERATE the parameters
b=0
for(k in 1:7)
{
b[k]=(k-1)*1.2+0.7
}

#TO GENERATE 1000 values of y using the for() loop
y=0
for(j in 1:1000)
{
y[j]=b[1]+b[2]*x1[j]+b[3]*x2[j]+b[4]*x3[j]+b[5]*x4[j]+b[6]*x5[j]+b[7]*x6[j]+e[j]
}

#TO GENERATE 1000 values of Y 

Y=b[1]+b[2]*x1+b[3]*x2+b[4]*x3+b[5]*x4+b[6]*x5+b[7]*x6+e


#To estimate the fitted parameters

#FITTING A LINEAR REGRESSION MODEL IN R

mod=lm(y~x1+x2+x3+x4+x5+x6)
summary(mod)

#To extract the model parameters use: 
beta0.hat=mod$coef[1]
beta1.hat=mod$coef[2]
beta2.hat=mod$coef[3]
beta3.hat=mod$coef[4]
beta4.hat=mod$coef[5]
beta5.hat=mod$coef[6]
beta6.hat=mod$coef[7]


#y_i.hat are the predicted values using predict()function
y.hat=predict(mod)

#y_i.hat manually
Y.hat=beta0.hat+beta1.hat*x1+beta2.hat*x2+beta3.hat*x3+beta4.hat*x4+beta5.hat*x5+beta6.hat*x6

#CALUCULATING THE SSE sum(y_i-y_i.hat)^2
SSE=sum((y-Y.hat)^2)


#using the for() loop
diff=0
for(i in 1:1000)
{
diff[i]=(y[i]-Y.hat[i])^2
}
sse=sum(diff)

N[p]=sse
}

MSSE=1/(1000*500)*sum(N)
MSSE



even<-seq(0,100,2)
even

odd<- seq(1,by=2,len=100)
odd

fteneven<-seq(0,by=2,len=10)
fteneven

modd<-seq(1,10000,2)
modd
sumodd<-sum(modd)
sumodd

f<-function(x)
{
 sin(x)
}
integrate(f,0,5)

t=4
asset<-function(t)

  {
    print(5000000*exp(-0.2*(t^2+t+1)))
  }
asset(t)

  b<-c(1,2,3,4,5,5)
  b
  hist(b)
  
  
  
  a<-c(1,2,3,4,5,6,7,8,9,10)
  b<-c(1,2,3,4,5,6,7,8,9,10)
  c<-c(1,2,3,4,5,6,7,8,9,10)
  a
  b
  c
  
  d<-rbind(a,b,c)
  
  e<-matrix(c(a,b,c),nrow=3,ncol=10,byrow=TRUE)
  e