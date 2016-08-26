NB. The Dyalog APL Challenge 2014
NB. http://www.dyalog.com/uploads/files/student_competition/2014_problems_phase1.pdf

NB. Problem 1 - It's all right

isRightTriangle =: (+/ @: *: @: [) = (*: @:])

NB. Here's a more general version after feedback from the J Programming list:
isRightTriangle =: = & ([:+/*:)

NB. Problem 2 - How tweet it is

vowel =: 'AEIOUaeiou'
isVowel =: +/ @: (vowel & =)
