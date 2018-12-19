Feature: Switch words to ZYXW order?
	Read one CSV file with a string list of words and create a CSV file, with a string list of words in descending alpabetidcal order

	Scenario Outline: Verify correct filename
		Given a CSV file "<filename>"
		When I ask the file is input.csv
		Then I should be told "<answer>"

		Examples:
			| filename | answer |
			| input.csv | Correct file |
			| anything else! | Not the correct file, looking for input.csv |

	Scenario Outline: Verify a comma(s) is(are) present in the long string
		Given "<inputs>" from inputs.csv
		When I verify there are commas in the string
		Then I should see "<array_answer>"

		Examples:
			| inputs | array_answer |
			| 'Canton,Portland,Rome' | Cities can be stored into an array |
			| 'Canton-Portland-Rome' | No commas in string, therefore no array |

	Scenario: Place each city string into an array element
		Given "<inputs>" from inputs.csv
		When I split each city string into an array element
		Then the cities strings are split into array elements

	# Scenario Outline: Verify each city array element is a word
	# 	Given a words array
	# 		And ignoring the last words array "<element>"
	# 	When I ask to verify each words array "<element>" is a word
	# 	Then I should be told "<element>" is "<word_answer>"

	# 	Examples:
	# 	| element | word_answer |
	# 	| "Portland" | "a word" |
	# 	| "Stockholm" | "a word" |
	# 	| "Port land" | "not a word" |
	# 	| "St0ckh0lm" | "not a word" |
	# 	| "\n" | "not a word" |

	# Scenario Outline: Verify the last words array element contains a new line character ("\n")
	# 	Given the words array
	# 	When I ask if to verify the words array "<last_element>" is a new line character
	# 	Then I should be told "<last_element_answer>"

	# 	Examples:
	# 	| last_element | last_element_answer |
	# 	| "\n" | "new line character is present" |
	# 	| "n" | "new line character is not present" |
	# 	| "anything else!" | "new line character is not present" |

	# Scenario: The word array is sorted in descending alphabetical order
	# 	Given the array of words
	# 		And ignoring the last words array "<element>"
	# 	When I ask to sort the array of words in descending alphabetical order
	# 	Then I should be told "the array of words are sorted"

	# Scenario: The word array is stored as a new file "output.csv"
	# 	Given the array of words
	# 	When I ask to write a new file
	# 	Then the word array are stored as a single string
	# 		And there should be a comma between each word
	# 		And there should be a new line character at the end of the string
	# 	Then I should be told "output.csv file is generated"
		