Feature: Subtraction
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sub of numbers

Background:
	Given Web-calculator is opened

Scenario Outline: Sub two whole numbers
	When I entered <first number> into the calculator
	When I press Subtraction
	When I entered <second number> into the calculator
	When I press equal
	Then the result should be <result> on the screen

	Examples:
		| first number | second number | result |
		| 7            | 5             | 2      |
		| 10           | 15            | -5     |
		| 137          | 131           | 6      |
		| 12           | 0             | 12     |
		| 10001        | 1             | 10000  |
		| 0            | 0             | 0      |

Scenario Outline: Sub three whole  numbers
	When I entered <first number> into the calculator
	When I press Subtraction
	When I entered <second number> into the calculator
	When I press Subtraction
	When I entered <third number> into the calculator
	When I press equal
	Then the result should be <result> on the screen

	Examples:
		| first number | second number | third number | result |
		| 10           | 3             | 5            | 2      |
		| 111          | 77            | 64           | -30    |
		| 89           | 100           | 4            | -15    |
		| 0            | 0             | 0            | 0      |

Scenario Outline: Sub two fractional numbers
	When I entered <first number_part1> into the calculator
	When I entered <point> into the calculator
	When I entered <first number_part2> into the calculator
	When I press Subtraction
	When I entered <second number_part1> into the calculator
	When I entered <point> into the calculator
	When I entered <second number_part2> into the calculator
	When I press equal
	Then the result should be <result> on the screen

	Examples:
		| first number_part1 | point | first number_part2 | second number_part1 | point | second number_part2 | result     |
		| 1                  | .     | 56                 | 1                   | .     | 3                   | 0.26       |
		| 0                  | .     | 4                  | 2                   | .     | 0                   | -1.6       |
		| 60                 | .     | 341                | 1234                | .     | 5432                | -1174.2022 |
		| 808                | .     | 4678               | 53                  | .     | 78543               | 754.68237  |
		| 0                  | .     | 0                  | 0                   | .     | 0                   | 0          |

Scenario Outline: Sub three fractional numbers
	When I entered <first number_part1> into the calculator
	When I entered <point> into the calculator
	When I entered <first number_part2> into the calculator
	When I press Subtraction
	When I entered <second number_part1> into the calculator
	When I entered <point> into the calculator
	When I entered <second number_part2> into the calculator
	When I press Subtraction
	When I entered <third number_part1> into the calculator
	When I entered <point> into the calculator
	When I entered <third number_part2> into the calculator
	When I press equal
	Then the result should be <result> on the screen

	Examples:
		| first number_part1 | point | first number_part2 | second number_part1 | point | second number_part2 | third number_part1 | point | third number_part2 | result   |
		| 12                 | .     | 034                | 0                   | .     | 001                 | 0                  | .     | 309                | 11.724   |
		| 0                  | .     | 01                 | 0                   | .     | 65                  | 1                  | .     | 0                  | -1.64    |
		| 2987               | .     | 8765               | 543                 | .     | 7                   | 1876               | .     | 34                 | 564.8365 |
		| 0                  | .     | 0                  | 0                   | .     | 0                   | 0                  | .     | 0                  | 0        |

Scenario Outline: Sub two  numbers (first- whole; second-fractional)
	When I entered <first number> into the calculator
	When I press Subtraction
	When I entered <second number_part1> into the calculator
	When I entered <point> into the calculator
	When I entered <second number_part2> into the calculator
	When I press equal
	Then the result should be <result> on the screen

	Examples:
		| first number | second number_part1 | point | second number_part2 | <result   |
		| 28           | 0                   | .     | 25                  | 27.75     |
		| 4            | 4                   | .     | 265                 | -0.265    |
		| 199          | 35                  | .     | 1                   | 163.9     |
		| 4400         | 330                 | .     | 8765                | 4069.1235 |
		| 500000       | 41890               | .     | 02                  | 8109.98   |
		| 0            | 0                   | .     | 1                   | -0.1      |
		| 0            | 0                   | .     | 0                   | 0         |

Scenario Outline: Sub two  numbers (first- fractional; second-whole)
	When I entered <first number_part1> into the calculator
	When I entered <point> into the calculator
	When I entered <first number_part2> into the calculator
	When I press Subtraction
	When I entered <second number>
	When I press equal
	Then the result should be <result> on the screen

	Examples:
		| first number_part1 | point | first number_part2> | second number | <result    |
		| 0                  | .     | 27                  | 1             | -0.73      |
		| 1                  | .     | 001                 | 0             | 1.001      |
		| 15                 | .     | 897                 | 19            | -3.103     |
		| 468                | .     | 0                   | 678           | -210       |
		| 6431               | .     | 7894                | 10000         | -3568.2106 |
		| 0                  | .     | 0                   | 0             | 0          |

		Scenario Outline: Sub three numbers (first- fractional; second-whole; third-fractional )
	When I entered <first number_part1> into the calculator
	When I entered <point> into the calculator
	When I entered <first number_part2> into the calculator
	When I press Subtraction
	When I entered <second number>
	When I press Subtraction
	When I entered <third number_part1> into the calculator
	When I entered <point> into the calculator
	When I entered <third number_part2> into the calculator
	When I press equal
	Then the result should be <result> on the screen
	Examples: 
	| first number_part1 | point | first number_part2 | second number | third number_part1 | point | third number_part2 | result   |
	| 12                 | .     | 7                  | 10            | 3                  | .     | 001                | -0.3001  |
	| 99                 | .     | 99                 | 44            | 0                  | .     | 03                 | 55.96    |
	| 0                  | .     | 0001               | 100           | 95                 | .     | 1111               | -195.111 |
	| 0                  | .     | 0                  | 0             | 0                  | .     | 0                  | 0        |
	| 60000              | .     | 80001              | 59000         | 1000               | .     | 8                  | 0.00001  |