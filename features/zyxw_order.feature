Feature: Switch words to ZYXW order?
	Read one CSV file with a string list of words and create a CSV file, with a string list of words in descending alphabetical order

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

	Scenario: Sort cities array into descending alphabetical order
		Given an array of cities
		When I sort the array of cities into descending alphabetical order
		Then the array of cities are sorted in descending alphabetical order

	Scenario Outline: Verify each city array element is a city
		Given a city array "<element>"
		When I verify a city array element is a city
		Then the city array element is "<city_answer>"

		Examples:
		| element | city_answer |
		| 'Portland' | a city|
		| 'Stockholm' | a city |
		| 'Canton' | a city |
		| 'Port land' | not a city |
		| 'St0ckh0lm' | not a city |
		| 'Can-+!ton' | not a city |

	Scenario: Combine descending alphabetical order citiesinto a long string
		When I ask to combine the descending alphabetical order cities array
		Then there should be a long string of cities

	# Scenario: Write long string of cities into file "output.csv"
	# 	Given a long string of cities
	# 	When I ask to write the long string of cities to "output.csv"
	# 	Then the new file should be created
		