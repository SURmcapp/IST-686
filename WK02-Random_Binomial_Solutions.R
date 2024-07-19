# 1
#1.	Recreate your Pascal’s Triangle from the previous exercise with this code:
  
  lapply(0:7, function(i) choose(i, 0:i)/sum(choose(i, 0:i)))

#See if you can modify that code to produce the associated probabilities. 
#Hint: add the subset expression [[8]] to select just the eighth element of the list returned by lapply().

#2
# 2.	Use rbinom() to create a list of ten trials, where each trial consists of seven events (e.g., coin tosses). 
  # Set prob=0.50 to use a fair coin. Did your list of ten include a zero or a seven? Why?
  
  ?rbinom
  
  rbinom(n = 10, size = 7, prob = 0.5 )
  
  #  [1] 2 3 2 4 6 3 6 4 3 4
  # 2 Heas, 3 heads, 2 heads,....
  # Answer: Although 0 or 7 heads are theoretically possible, they are much less likeley thatn
  # other outcomes. 
  
#3.	Improve your rbinom() code to run a large empirical simulation 
# of a coin toss with seven events. Run 100,000 trials.
#  Report a table showing the number of events for each of the eight outcomes. 
  #Hint: in addition to rbinom() you will need the table() command.
  
set.seed(110)
trials =  table(rbinom(100000, 7, 0.5 ))
trials 

# Solution
#. 0     1     2     3     4     5     6     7 
# 765  5525 16232 27471 27600 16096  5517   794 
  
# 4. 
#4.	Using the capabilities of R, convert the events in the table from question #3 
  # into probabilities. Use barplot() to make a graph of the results.
  
probs =  trials/sum(trials)
barplot(probs)

 #.  0       1       2       3       4       5       6       7 
 #0.00765 0.05525 0.16232 0.27471 0.27600 0.16096 0.05517 0.00794 
 
# 5.	Bonus: You can use the following line of code to produce the theoretical probabilities for a binomial distribution with seven events:
   
   dbinom(x=c(0,1,2,3,4,5,6,7),size=7,prob=0.5)
 
# Why are these theoretical probabilities slightly different from your results for question #4?
 
# Answer: Since dbinom uses the binomial density directly to arrive at the theoretical probabilities
   # and rbinom generates these probabilities as random process, rbinom will always differ slightly
   # from dbinom which is deterministic
  
  