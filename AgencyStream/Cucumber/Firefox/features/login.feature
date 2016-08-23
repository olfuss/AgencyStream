Feature: Login

	Scenario: User logs into AgencyStream
		Given the user enters valid login information
		Then the user will be directed to the AS Dashboard
		Then clean up