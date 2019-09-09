sample.space <- c("Heads","Tails")

## Simulating for n = 1000 and p = 0.3
c1 <- sample(sample.space, size = 1000,replace = TRUE,prob = c(0.3,0.7))

## Inspecting the simulation
table(c1)

## Simulating for variable n
coinflip <- function(n){
  c2 <- sample(sample.space, size = n,replace = TRUE,prob = c(0.3,0.7))
  return(sum(c2 == "Heads")/n)
}

x <- 1:1000
results <- c()
for(i in x)
{
  results[i] <- coinflip(i) 
}

plot(x,results,type = "l")


## Simulating for n = 1000 and p = 0.03
c3 <- sample(sample.space, size = 1000,replace = TRUE,prob = c(0.03,0.97))

## Inspecting the simulation
table(c3)

## Simulating for variable n
coinflip1 <- function(n){
  c4 <- sample(sample.space, size = n,replace = TRUE,prob = c(0.03,0.97))
  return(sum(c4 == "Heads")/n)
}

x1 <- 1:1000
results1 <- c()
for(i in x1)
{
  results1[i] <- coinflip1(i) 
}

plot(x1,results1,type = "l")


