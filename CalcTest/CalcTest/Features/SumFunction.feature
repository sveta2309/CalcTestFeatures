Feature: SumFunction
	In order to see result of sum two number
	As a usre
	I want to be told the sum of two numbers


	Background:
	Given The calculator is open in the Google Chrome

Scenario Outline: Sum two integer numbers	
	
	When I press first <numeral>
	Then <numeral> should be in the enter field
	When I press "+" button
	When I press second  <numeral> button
	Then number should be in the enter field
	When i press "=" button
	Then the result should be on the screen

	Examples:
		|numeral  |
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

Scenario Outline: Sum two fractional numbers	
	
	When I press <numeral>
	When I press "." button
	When I press <numeral>
	Then number should be in the enter field
	When I press "+" button
	When I press <numeral> button
	When I press "." button
	When I press <numeral>
	Then number should be in the enter field
	When i press "=" button
	Then the result should be on the screen

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

Scenario Outline: Sum fractional and integer numbers	
	
	When I press <numeral>
	When I press "." button
	When I press <numeral>
	Then number should be in the enter field
	When I press "+" button
	When I press <numeral> button
	When I press <numeral> button
	Then number should be in the enter field
	When i press "=" button
	Then the result should be on the screen

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