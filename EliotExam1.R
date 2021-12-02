#ELIOT
#EXERCISE ONE
#PART A

numbers = 1:52

montmort = replicate(10000,{
  #shuffle the deck
  deck = sample(numbers,52,replace=FALSE)

  #check for matches
  matches = deck==numbers
  
  #count number of matches
  #return true if there's at least one match
  sum(matches)>0
})

#find the probability
print(mean(montmort))


#EXERCISE ONE
#PART B

geese = 1:30

simmons = replicate(10000,{
  #sample 20 geese, "tag" them
  first = sample(geese,20,replace=FALSE)
  
  #sample 10 geese
  second = sample(geese,10,replace=FALSE)

  #count number of geese in second sample who were tagged in first
  #return true if more than 8 geese in second sample were tagged
  sum(second%in%first)>8
})

#find the probability 
print(mean(simmons))



