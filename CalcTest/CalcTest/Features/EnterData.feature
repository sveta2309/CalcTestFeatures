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

Scenario Outline: Start to enter data with dot
	When I press "." button
	When I press  <numeral> button
	Then  0.<numeral> should be in the enter field

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

Scenario Outline: Enter dot after 1 symbol
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

#Scenario Outline: Enter dot after 14 symbols
#	When I press  <numeral> button x14 times
#	When I press "." button
#	When I press  <numeral> button
#	Then  <numeral>x14.<numeral> should be in the enter field
#
#	Examples:
#		| numeral |
#		| 1       |
#		| 2       |
#		| 3       |
#		| 4       |
#		| 5       |
#		| 6       |
#		| 7       |
#		| 8       |
#		| 9       |
#		| 0       |
#
#Scenario Outline: Enter dot after 13 symbols
#	When I press  <numeral> buttonx13 times
#	When I press "." button
#	When I press  <numeral> button
#	Then  <numeral>x13.<numeral> should be in the enter field
#
#	Examples:
#		| numeral |
#		| 1       |
#		| 2       |
#		| 3       |
#		| 4       |
#		| 5       |
#		| 6       |
#		| 7       |
#		| 8       |
#		| 9       |
#		| 0       |

Scenario: Delete numbers from empty field
	When I press "AC" button
	Then the enter field should be empty

Scenario Outline: Delete numbers from enter field after 1 entered symbol
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

#Scenario Outline: Delete numbers from enter field after 15 entered symbols
#	When I press  <numeral> buttonx15 times
#	When I press "AC" button
#	Then the enter field should be empty
#
#	Examples:
#		| numeral |
#		| 1       |
#		| 2       |
#		| 3       |
#		| 4       |
#		| 5       |
#		| 6       |
#		| 7       |
#		| 8       |
#		| 9       |
#		| 0       |
#
#Scenario Outline: Delete numbers from enter field after 16 entered symbols
#	When I press  <numeral> buttonx16 times
#	When I press "AC" button
#	Then the enter field should be empty
#
#	Examples:
#		| numeral |
#		| 1       |
#		| 2       |
#		| 3       |
#		| 4       |
#		| 5       |
#		| 6       |
#		| 7       |
#		| 8       |
#		| 9       |
#		| 0       |

#Scenario Outline: Number is bigger than the limit
#	When I press  <numeral> button x17 times
#	Then <numeral>x16 times should be on the screen
#
#	Examples:
#		| numeral |
#		| 1       |
#		| 2       |
#		| 3       |
#		| 4       |
#		| 5       |
#		| 6       |
#		| 7       |
#		| 8       |
#		| 9       |
#		| 0       |