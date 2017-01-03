NB. The Dyalog APL Challenge 2014
NB. http://www.dyalog.com/uploads/files/student_competition/2014_problems_phase1.pdf

NB. =========================================================
NB. Problem 1 - It's all right
NB. =========================================================

isRightTriangle =: (+/ @: *: @: [) = (*: @:])

NB. Here's a more general version after feedback from the J Programming list:
isRightTriangle =: = & ([:+/*:)

NB. =========================================================
NB. Problem 2 - How tweet it is
NB. =========================================================

trimVowel =: -. & 'AEIOUaeiou'
innerPart =: }. @: }:
trimInnerVowels =: {. , (trimVowel @: innerPart) , {:
trimmable =: (> &2) @: #
trimWord =: ] ` trimInnerVowels @. trimmable

NB. I use this as an example on the Under pattern with verb inverses. Using this pattern 
NB. we manage to encapsulate two steps:
NB.  - The outer step where we tokenize the string (;:), apply the inner obverse, and put the tokens back into a string.
NB.  - The inner step where we apply our function to each box and using the obverse of 
NB.    unbox (that J automatically deduces) we put it all back into the box.
tweetable =: trimWord&.> &.;:

NB. =========================================================
NB. Problem 3 - Tell a Fib
NB. =========================================================


NB. =========================================================
NB. Problem 5 - Mirror Mirror
NB. =========================================================

stripSpecial =: -. & ' ,.;:!?' NB. All test cases pass with this but we need a better way to strip special characters.
comparable =: tolower &: stripSpecial
isPalindrome =: (comparable @ |.) -: comparable

NB. =========================================================
NB. Problem 8 - Go the distance
NB. =========================================================

NB: Calculates the distance between two points in a space of any number of dimensions (Euclidean space):

distance =: %: @: (+/ @: (*: @: -))

NB. =========================================================
NB. Problem 9 - Going ballistic
NB. =========================================================

NB. Calculates the distance (in meters) a projectile travels given an initial velocity in meters
per second and a trajectory in degrees.

acc =: *: @: [
toRadians =: 180 %~ o.
direction =: sin @: (2 & *) @: toRadians @: ]
G =: 9.8
balisticDistance =: acc * direction % G"_

NB. =========================================================
NB. Problem 10 - Sales are up, aren't they?
NB. =========================================================

NB. Complete solution as a one liner:
salesUp =: 100 * (>./ @: ((}. - }:) % }:))

NB. Step by step with named verbs:

salesIncrease =: }. - }:
salesIncreasePercentage =: salesIncrease % }:
max =: >./
salesUp1 =: 100 * (max @: salesIncreasePercentage)