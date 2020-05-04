Feature: EnterData
	In order to enter data for next calculation
	As a user
	I want to have a numbers and operations buttons

Background:
	Given The calculator is open in the Google Chrome

Scenario Outline: Enter numeral
	When I press <numeral>
	Then <numeral> should be in the enter field

	Examples:
		| numeral |
		| 1       |
		| 2       |
		| 3       |
		| 4       |
		| 5       |
		| 6       |
		| 7       |
		| 8       |
		| 9       |
		| 0       |

Scenario Outline: Enter dot
	When I press  <numeral> button
	When I press "." button
	When I press  <numeral> button
	Then  <numeral>.<numeral> should be in the enter field

	Examples:
		| numeral |
		| 1       |
		| 2       |
		| 3       |
		| 4       |
		| 5       |
		| 6       |
		| 7       |
		| 8       |
		| 9       |
		| 0       |

Scenario Outline: Delete numbers from enter field
	When I press  <numeral> button
	When I press "AC" button
	Then the enter field should be empty

	Examples:
		| numeral |
		| 1       |
		| 2       |
		| 3       |
		| 4       |
		| 5       |
		| 6       |
		| 7       |
		| 8       |
		| 9       |
		| 0       |

Scenario Outline: Number is bigger than the limit
	When I press  <numeral> button x17 times 
	Then <numeral>x16 times should be on the screen 

	Examples:
		| numeral |
		| 1       |
		| 2       |
		| 3       |
		| 4       |
		| 5       |
		| 6       |
		| 7       |
		| 8       |
		| 9       |
		| 0       |