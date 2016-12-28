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

vowel =: 'AEIOUaeiou'
isVowel =: +/ @: (vowel & =)

NB. =========================================================
NB. Problem 5 - Mirror Mirror
NB. =========================================================

stripSpecial =: -. & ' ,.;:!?' NB. All test cases pass with this but we need a better way to strip special characters.
comparable =: tolower &: stripSpecial
isPalindrome =: (comparable @ |.) -: comparable

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