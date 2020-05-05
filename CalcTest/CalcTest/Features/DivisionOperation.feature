Feature: DivisionOperation
	In order to enter numbers and divide by other numbers
	As a user
	I want to see the result of division

Background:
	Given The calculator is open in the Google Chrome

Scenario Outline: Integer division
	When I enter <numeral1>
	When I press on <division>
	When I enter <numeral2>
	Then I see the result in the field <result>

	Examples: 
	| numeral1 |  | division |  | numeral2 |  | result |
	|  5     |    | /        |  | 2        |  |  2.5   |


Scenario Outline: Fractional division
	When I enter <numeral1>
	When I press on <division>
	When I enter <numeral2>
	Then I see the result in the field <result>

	Examples: 
	| numeral1 |  | division |  | numeral2 |  | result |
	|  4.5     |  | /        |  | 3        |  |  1.5   |


Scenario Outline: Division of integers and fractional numbers
	When I enter <numeral1>
	When I press on <division>
	When I enter <numeral2>
	Then I see the result in the field <result>

	Examples: 
	| numeral1 |  | division |  | numeral2 |  | result |
	|  2       |  | /        |  | 0.5      |  |  4     |


Scenario Outline: Division by zero
	When I enter <numeral1>
	When I press on <division>
	When I enter <numeral2>
	Then I see the result in the field <result>

	Examples: 
	| numeral1 |  | division |  | numeral2 |  | result                                |
	|  1       |  | /        |  | 0        |  | Division by zero is not possible      |